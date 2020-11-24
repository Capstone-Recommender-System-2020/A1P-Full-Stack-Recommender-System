from django.shortcuts import render
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.views import APIView
from .apps import PredictionConfig
import pandas as pd
# from rest_framework.permissions import IsAuthenticated
# from .throttles import LimitedRateThrottle, BurstRateThrottle

# Create your views here.
"""
@api_view(['GET', 'POST'])
def api_add(request):
    sum = 0
    response_dict = {}
    if request.method == 'GET':
        # Do nothing
        pass
    elif request.method == 'POST':
        # Add the numbers
        data = request.data
        for key in data:
            sum += data[key]
        response_dict = {"sum": sum}
    return Response(response_dict, status=status.HTTP_201_CREATED)

class Add_Values(APIView):
    def post(self, request, format=None):
        sum = 0
        # Add the numbers
        data = request.data
        for key in data:
            sum += data[key]
        response_dict = {"sum": sum}
        return Response(response_dict, status=status.HTTP_201_CREATED)

class IRIS_Model_Predict(APIView):
    permission_classes = [IsAuthenticated]
    # throttle_classes = [LimitedRateThrottle]
    def post(self, request, format=None):
        data = request.data
        keys = []
        values = []
        for key in data:
            keys.append(key)
            values.append(data[key])
        X = pd.Series(values).to_numpy().reshape(1, -1)
        loaded_classifier = PredictionConfig.classifier
        y_pred = loaded_classifier.predict(X)
        y_pred = pd.Series(y_pred)
        target_map = {0: 'setosa', 1: 'versicolor', 2: 'virginica'}
        y_pred = y_pred.map(target_map).to_numpy()
        response_dict = {"Prediced Iris Species": y_pred[0]}
        return Response(response_dict, status=200)
"""
class get_events_1st_alg(APIView):
	def get(self, request, format=None):
		"""
		data = request.data
		banana_dictionary = {'banana':17}
		return Response(banana_dictionary, status=status.HTTP_201_CREATED)
		"""
		
		import pandas as pd
		import numpy as np
		import psycopg2
		import sqlalchemy
		from sklearn.metrics.pairwise import cosine_similarity
		from sklearn.metrics import pairwise_distances
		import requests

		from sqlalchemy import create_engine
		engine = create_engine('postgresql://postgres:postgres@localhost/postgres')
		# pd.read_sql_query('''SELECT * FROM arts_user_interaction LIMIT 5;''', engine)
		events = pd.read_sql_query('''SELECT * FROM arts_event;''', engine)
		Ratings = pd.read_sql_query('''SELECT * FROM arts_user_interaction;''', engine)

		Mean = Ratings.groupby(by="User_ID", as_index = False)['User Rating'].mean()
		Rating_avg = pd.merge(Ratings, Mean, on = "User_ID")
		Rating_avg['adg_rating']=Rating_avg['User Rating_x']-Rating_avg['User Rating_y']

		check = pd.pivot_table(Rating_avg,values='User Rating_x',index='User_ID',columns='Event_ID')
		final = pd.pivot_table(Rating_avg,values='adg_rating',index='User_ID',columns='Event_ID')
		final_event = final.fillna(final.mean(axis=0))
		final_user = final.apply(lambda row: row.fillna(row.mean()), axis=1)

		cosine = cosine_similarity(final_event)
		np.fill_diagonal(cosine, 0 )
		similarity_with_event =pd.DataFrame(cosine,index=final_event.index)
		similarity_with_event.columns=final_user.index

		def find_n_neighbours(df,n):
		    order = np.argsort(df.values, axis=1)[:, :n]
		    df = df.apply(lambda x: pd.Series(x.sort_values(ascending=False)
		           .iloc[:n].index, 
		          index=['top{}'.format(i) for i in range(1, n+1)]), axis=1)
		    return df

		sim_user_30_e = find_n_neighbours(similarity_with_event,30)

		def get_user_similar_events( user1, user2 ):
		    common_events = Rating_avg[Rating_avg.User_ID == user1].merge(
		    Rating_avg[Rating_avg.User_ID == user2],
		    on = "Event_ID",
		    how = "inner" )
		    return common_events.merge(events, on ='Event_ID')

		a = get_user_similar_events('User_ID10','User_ID220')
		a = a.reindex(columns= ['User Rating_x_x','User Rating_x_y','Name'])

		Rating_avg = Rating_avg.astype({"Event_ID": str})
		Movie_user = Rating_avg.groupby(by = 'User_ID')['Event_ID'].apply(lambda x:','.join(x))

		def User_item_score1(user):
		    Movie_seen_by_user = check.columns[check[check.index==user].notna().any()].tolist()
		    a = sim_user_30_e[sim_user_30_e.index==user].values
		    b = a.squeeze().tolist()
		    d = Movie_user[Movie_user.index.isin(b)]
		    l = ','.join(d.values)
		    Movie_seen_by_similar_users = l.split(',')
		    Movies_under_consideration = list(set(Movie_seen_by_similar_users)-set(list(map(str, Movie_seen_by_user))))
		    Movies_under_consideration = list(map(str, Movies_under_consideration))
		    score = []
		    for item in Movies_under_consideration:
		        c = final_event.loc[:,item]
		        d = c[c.index.isin(b)]
		        f = d[d.notnull()]
		        avg_user = Mean.loc[Mean['User_ID'] == user,'User Rating'].values[0]
		        index = f.index.values.squeeze().tolist()
		        corr = similarity_with_event.loc[user,index]
		        fin = pd.concat([f, corr], axis=1)
		        fin.columns = ['adg_score','correlation']
		        fin['score']=fin.apply(lambda x:x['adg_score'] * x['correlation'],axis=1)
		        nume = fin['score'].sum()
		        deno = fin['correlation'].sum()
		        final_score = avg_user + (nume/deno)
		        score.append(final_score)
		    data = pd.DataFrame({'Event_ID':Movies_under_consideration,'score':score})
		    top_5_recommendation = data.sort_values(by='score',ascending=False).head(5)
		    Movie_Name = top_5_recommendation.merge(events, how='inner', on='Event_ID')
		    Movie_Names = Movie_Name.Name.values.tolist()
		    return Movie_Names

		# user = input("Enter the user id to whom you want to recommend : ")
		
		data = request.data

		user = ""

		for i, v in data.items():
			user = str(v)

		predicted_movies = User_item_score1(user)
		
		# user = request.query_params.get("ID")

		return Response(predicted_movies, status=status.HTTP_201_CREATED)

class get_events_2nd_alg(APIView):
	def get(self, request, format=None):
		import sqlalchemy
		import pandas as pd
		import numpy as np
		from ast import literal_eval

		from sqlalchemy import create_engine
		engine = create_engine('postgresql://postgres:postgres@localhost/postgres')

		df_existingUser = pd.read_sql_query('''SELECT * FROM arts_user_interaction;''', engine)
		df = pd.read_sql_query('''SELECT * FROM arts_user_interaction;''', engine)
		df_NewUser_SurveyFeed = pd.read_sql_query('''SELECT * FROM arts_new_user''', engine)

		df_existingUser['Event Watched'] = df_existingUser['Event_ID']
		df_existingUser['Subgenre'] = df_existingUser['Event Subgenre']
		df_existingUser['User Rating'] = df_existingUser['User_Rating_Non_Numeric']

		df = df.drop('User_ID', 1)
		df['Rating'] = df['User_Rating_Non_Numeric']
		df['Genre'] = df['Event Genre']
		df['Sub-Genre'] = df['Event Subgenre']

		df['Rating'] = df['Rating'].apply(literal_eval)
		df_existingUser['User Rating'] = df_existingUser['User Rating'].apply(literal_eval)

		df_existingUser['User Rating'] = df_existingUser["User Rating"].apply(lambda x: x[0])
		df['Rating'] = df.Rating.apply(lambda x: x[0])

		NewUser_SurveyOutput = pd.DataFrame(columns = ['New_User_ID', 'Genre 1', 'Genre 2', 'Genre 3'])
		newuser_thumbsup = df.loc[df["Rating"] == "thumbs up"]

		Genre_1 =[]
		Genre_2 =[]
		Genre_3 =[]

		for i in range(df_NewUser_SurveyFeed.shape[0]):
		    new_dict = []
		    
		    Genre1 = newuser_thumbsup.loc[newuser_thumbsup['Genre'] == df_NewUser_SurveyFeed["Genre 1"][i]]
		    Genre2 = newuser_thumbsup.loc[newuser_thumbsup['Genre'] == df_NewUser_SurveyFeed["Genre 2"][i]]
		    Genre3 = newuser_thumbsup.loc[newuser_thumbsup['Genre'] == df_NewUser_SurveyFeed["Genre 3"][i]]
		    
		    #print(Genre1.head())
		    #break
		    
		    top_3_G1 = Genre1["Event_ID"].value_counts().index[0:3]
		    top_3_G2 = Genre2["Event_ID"].value_counts().index[0:3]
		    top_3_G3 = Genre3["Event_ID"].value_counts().index[0:3]
		    
		    temp_dict = {}
		    temp_dict[df_NewUser_SurveyFeed["Genre 1"][i]] = top_3_G1
		    Genre_1.append(temp_dict)
		    temp_dict = {}
		    temp_dict[df_NewUser_SurveyFeed["Genre 2"][i]] = top_3_G2
		    Genre_2.append(temp_dict)
		    temp_dict = {}
		    temp_dict[df_NewUser_SurveyFeed["Genre 3"][i]] = top_3_G3
		    Genre_3.append(temp_dict)
		    
		    
		    #print("New dict :",new_dict)
		    #print("1:",Genre_1)
		    #print("2:",Genre_2)
		    #print("3:",Genre_3)
		    #break

		NewUser_SurveyOutput["New_User_ID"] = df_NewUser_SurveyFeed["New_User_ID"]
		NewUser_SurveyOutput["Genre 1"] = Genre_1
		NewUser_SurveyOutput["Genre 2"] = Genre_2
		NewUser_SurveyOutput["Genre 3"] = Genre_3

		import re

		thumbsup_df = df_existingUser.loc[df_existingUser["User Rating"] == "thumbs up"]
		existing_user_analysis = pd.DataFrame(columns = ["User_ID","Genre 1","Genre 2","Genre 3"])
		Genre_list = list(thumbsup_df["Event Genre"].unique())

		from collections import Counter
		import random
		
		user_list = thumbsup_df.User_ID.unique()

		for user in user_list:
		    user_df = thumbsup_df.loc[thumbsup_df["User_ID"] == user]     #1: store user 1 events that were thumbed up
		    user_genre = list(user_df["Event Genre"].unique())            #1: user 1 attended event's unique genre
		    result = list((Counter(Genre_list) - Counter(user_genre)).elements())
		    # print("User",user)
		    # print("------------")
		    # print(Genre_list)
		    # print(user_genre)
		    # print(result)     # Show genres not attended and also given thumbs down/neutral
		    #print(result)
		    
		    if(len(result)>2):   # for 3 or more genres not seen/explored
		        total_dict = []
		        for genre in result:
		            #print(genre)
		            genre_dict = {}
		            sub_genre_df = thumbsup_df.loc[thumbsup_df['Event Genre'] == genre]
		            #print(sub_genre_df)
		            #print(sub_genre_df["Event Watched"].value_counts())
		            top_3 = sub_genre_df["Event Watched"].value_counts().index[0:3]
		            genre_dict[genre] = top_3
		            total_dict.append(genre_dict)
		            #print(total_dict)
		            #print(total_dict[0])
		        # print(total_dict)    # Top 3 events generated for all unexplored genres
		        three_genres = random.sample(total_dict, k=3)   # Randomly selecting 3 genres for more than 3 genres
		        # print(three_genres)
		        new_row = {"User_ID":user,"Genre 1":three_genres[0],"Genre 2":three_genres[1],"Genre 3":three_genres[2]}
		        existing_user_analysis = existing_user_analysis.append(new_row, ignore_index=True)

		    elif(len(result)==2):
		        total_dict = []
		        for genre in result:
		            genre_dict = {}
		            sub_genre_df = user_df.loc[user_df["Event Genre"] == genre]
		            if(genre == result[0]):
		                top_4 = sub_genre_df["Event Watched"].value_counts().index[0:4]
		                genre_dict[genre] = top_4
		                total_dict.append(genre_dict)
		            else:
		                top_5 = sub_genre_df["Event Watched"].value_counts().index[0:5]
		                genre_dict[genre] = top_5
		                total_dict.append(genre_dict)
		                
		        new_row = {"User_ID":user,"Genre 1":total_dict[0],"Genre 2":total_dict[1]}
		        existing_user_analysis = existing_user_analysis.append(new_row, ignore_index=True)
		        
		    else:
		        genre_dict = {}
		        sub_genre_df = user_df.loc[user_df["Event Genre"] == genre]
		        top_9 = sub_genre["Event Watched"].value_counts().index[0:9]
		        genre_dict[genre] = top_9
		        
		        new_row = {"User_ID":user,"Genre 1":genre_dict}
		        existing_user_analysis = existing_user_analysis.append(new_row, ignore_index=True)
		
		def return_genres(user_id):
		    return existing_user_analysis[existing_user_analysis['User_ID'] == user_id]

		data = request.data

		user_id = ''

		for i, v in data.items():
			user_id = v

		returned_df = return_genres(user_id)
		returned_json_response = {}

		for column_name, column_value in returned_df[['Genre 1', 'Genre 2', 'Genre 3']].iteritems():
		    returned_json_response[column_name] = list(column_value)[0]

		return Response(returned_json_response, status=status.HTTP_201_CREATED)

class get_events_3rd_alg(APIView):
	def get(self, request, format=None):
		import psycopg2
		import pandas as pd
		from sqlalchemy import create_engine

		engine = create_engine('postgresql://postgres:postgres@localhost/postgres')

		arts_user_interaction = pd.read_sql_query('''SELECT * FROM arts_user_interaction;''', engine)

		user_id_final = arts_user_interaction.iloc[9::10, 1:3]

		def get_event_from_user(user_id):
		    event_from_user = user_id_final[user_id_final['User_ID'] == user_id]['Event_ID']
		    return event_from_user

		data = request.data

		user_id = ''

		for i, v in data.items():
			user_id = v

		event_from_user = get_event_from_user(user_id).iloc[0]

		arts_event = pd.read_sql_query('''SELECT * FROM arts_event;''', engine)

		def array_creation(x):
		    array_col = []
		    for col in arts_event.columns[6:]:
		        if x[col] == 1:
		            array_col.append(col)
		    return array_col

		arts_event['array_categories'] = arts_event.apply(array_creation, axis=1)

		def create_soup(x):
		    return ' '.join(x['array_categories'])

		arts_event['soup'] = arts_event.apply(create_soup, axis=1)

		from sklearn.feature_extraction.text import CountVectorizer
		count = CountVectorizer(stop_words='english')
		count_matrix = count.fit_transform(arts_event['soup'])

		from sklearn.metrics.pairwise import cosine_similarity
		cosine_sim2 = cosine_similarity(count_matrix, count_matrix)

		arts_event = arts_event.reset_index()
		indices = indices = pd.Series(arts_event.index, index=arts_event['Event_ID'])

		def get_recommendations(event_id, cosine_sim2= cosine_sim2):
		    #take the index number of said movie
		    idx = indices[event_id]

		    #get pairwise similarity scores of all movies with that mmovie
		    sim_scores = list(enumerate(cosine_sim2[idx]))

		    #the value at index 1 of column x
		    sim_scores = sorted(sim_scores, key = lambda x:x[1], reverse = True)

		    #scores of 10 most similar movies
		    sim_scores = sim_scores[1:11]

		    #get movie indices
		    event_idx = [i[0] for i in sim_scores]

		    #return top 10 most similar movies
		    return (arts_event['Event_ID'].iloc[event_idx], sim_scores)

		recommendations = get_recommendations(event_from_user, cosine_sim2)

		event_score_list_1stmethod = []

		event_id_1stmethod = list(recommendations[0])
		similarity_scores_1stmethod = list(recommendations[1])

		event_id_final_1stmethod = []
		event_name_final_1stmethod = []
		similarity_scores_final_1stmethod = []

		for event in event_id_1stmethod:
		    event_id_final_1stmethod.append(event)
		    event_name_final_1stmethod.append(arts_event[arts_event['Event_ID'] == event]['Name'].values[0])

		for score in similarity_scores_1stmethod:
		    similarity_scores_final_1stmethod.append(score[1])

		first_method_df = pd.DataFrame(list(zip(event_id_final_1stmethod, event_name_final_1stmethod, similarity_scores_final_1stmethod)), columns=['Event_ID', 'Event_Name', 'Similarity_Score'])

		for event_info in list(zip(event_id_final_1stmethod, event_name_final_1stmethod, similarity_scores_final_1stmethod)):
		    event_score_list_1stmethod.append({'Event_ID':event_info[0], 'Event_Name':event_info[1], 'Similarity_Score':event_info[2]})

		class Event(object):
		    def __init__(self):
		        """
		        this is a class for events
		        """
		        self.name = None
		        self.id = None
		        self.similarity_scores = {}
		        self.most_similar_events = {}

		def generate_similarity_scores(arts_data, event_id):
		    """
		    Goes through database and finds similatrity scores for each event
		    :return: list of event objects
		    type: list
		    """
		    event_list = []
		    for i in range(len(arts_data.index)):

		    # initialize i and j as 0
		        event = Event()
		        event.id = arts_data.loc[i][1]
		        # CHANGE THE 2 here to the column index wherever I insert the
		        event.name = arts_data.loc[i][2]
		        # event Name into.
		        j = 0

		        # takes 100 divided by total column length to result in the weight each attribute will carry

		        pct_to_increment = 100/len(arts_data.columns)
		        # 2 while loops will compare each row and its attributes
		        # to all other rows and their attributes
		        if event.id == event_id:
		            while j < len(arts_data.index):
		                k = 0
		                sim_attributes = 0

		                # ... k, where it will move across each attribute column and if it's a match, it will
		                # increment the similarity score.
		                while k < len(arts_data.columns):
		                    #
		                    if arts_data.loc[i][k] == arts_data.loc[j][k]:

		                        sim_attributes += pct_to_increment

		                    k += 1

		                # event below is the i'th event object, it's adding a dict object with a key of the
		                # j'th event and assigning a similarity score based on it's common attributes with the i'th row.
		                event.similarity_scores[arts_data.loc[j][1]] = (sim_attributes)
		                j += 1

		            # each event i, is appended to event list, which allows us to iterate through it below...
		            event_list.append(event)
		        else:
		            continue

		    return event_list, event_id

		def compare_attributes(event_list):
		        # here we iterate through the event's list created above.
		        for event in event_list:

		            column_names = ["Event ID", "Similarity Score"]
		            data_frame = pd.DataFrame(columns = column_names)
		            data_frame['Event ID']= [None, None, None, None, None]
		            data_frame['Similarity Score'] = [0,0,0,0,0]
		            scores = 0
		            while scores < 5:
		                key = list(event.similarity_scores)[scores]
		                event.most_similar_events[key] = event.similarity_scores[key]
		                scores+=1

		                #Iterate through list of similarity scores and compare to the 5
		                #keep highest value
		            for sim_score in event.similarity_scores:
		                lowest_value = 0
		                lowest_key = 0
		                for event_tuple in event.most_similar_events.items():
		                    if event_tuple[1] > lowest_value:
		                        lowest_value = event_tuple[1]
		                        lowest_key = event_tuple[0]
		                if event.similarity_scores[sim_score] > lowest_value:
		                    event.most_similar_events.pop(lowest_key)
		                    event.most_similar_events[sim_score] = event.similarity_scores[sim_score]

		            current_count=0
		            for key,value in event.most_similar_events.items():
		                data_frame['Event ID'][current_count] = key
		                data_frame['Similarity Score'][current_count] = event.most_similar_events[key]
		                current_count+=1

		            return data_frame

		event_list = generate_similarity_scores(arts_event, event_from_user)
		df = compare_attributes(event_list[0])

		df = df[df['Event ID'] != event_from_user]

		event_id_2ndmethod = list(df['Event ID'])

		event_id_final_2ndmethod = []

		for event in event_id_2ndmethod:
		    event_id_final_2ndmethod.append(event)

		event_id_1st_and_2nd_method = []

		event_id_1st_and_2nd_method.extend(event_id_final_1stmethod)
		event_id_1st_and_2nd_method.extend(event_id_final_2ndmethod)

		df['Similarity Score'] = df['Similarity Score'] / 100

		event_score_list_cumulative = []

		unique_event_id_1st_and_2nd_method = set(event_id_1st_and_2nd_method)

		event_id_final_cumulative = []
		event_name_final_cumulative = []
		event_method_count_cumulative = []
		event_algorithm_and_score_final_cumulative = []

		import collections
		counter=collections.Counter(event_id_1st_and_2nd_method)
		frequency_of_similar_events = dict(counter)

		for event in unique_event_id_1st_and_2nd_method:
		    event_id_final_cumulative.append(event)
		    event_name_final_cumulative.append(arts_event[arts_event['Event_ID'] == event]['Name'].values[0])
		    event_method_count_cumulative.append(frequency_of_similar_events[event])

		    if (event in event_id_1stmethod) and (event in event_id_2ndmethod):
		        event_algorithm_and_score_final_cumulative.append({'1st method':first_method_df.loc[first_method_df['Event_ID'] == event, 'Similarity_Score'].iloc[0], 
		                                                           '2nd method':df.loc[df['Event ID'] == event, 'Similarity Score'].iloc[0]})
		    elif (event in event_id_1stmethod):
		        event_algorithm_and_score_final_cumulative.append({'1st method':first_method_df.loc[first_method_df['Event_ID'] == event, 'Similarity_Score'].iloc[0]})
		    elif (event in event_id_2ndmethod):
		        event_algorithm_and_score_final_cumulative.append({'2nd method':df.loc[df['Event ID'] == event, 'Similarity Score'].iloc[0]})

		for event_info in list(zip(event_id_final_cumulative, event_name_final_cumulative, event_method_count_cumulative, event_algorithm_and_score_final_cumulative)):
		    event_score_list_cumulative.append({'Event_ID':event_info[0], 'Event_Name':event_info[1], 'Number_Of_Methods_That_Outputted_This_Event':event_info[2], 'Similarity_Score':event_info[3]})
		
		return Response(event_score_list_cumulative, status=status.HTTP_201_CREATED)