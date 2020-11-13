
# Example python program to read data from a PostgreSQL table

# and load into a pandas DataFrame
import psycopg2

import pandas as pd

from sqlalchemy import create_engine

def create_connection():
    # Create an engine instance
    
    postgres_Engine   = create_engine('postgresql+psycopg2://postgres:@127.0.0.1', pool_recycle=3600)



    # Connect to PostgreSQL server

    dbConnection    = postgres_Engine.connect()



    # Read data from PostgreSQL database table and load into a DataFrame instance

    arts_data       = pd.read_sql("select * from \"arts_data\"", dbConnection)



    pd.set_option('display.expand_frame_repr', False)



    # Close the database connection

    dbConnection.close()
     # return the DataFrame

    return(arts_data)

"""
This algorithm will recommend events based on the percentage of similar attributes.
"""


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
            print('match found')
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
            print('match not found')
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

            print("returning df")
            return data_frame


arts_data = create_connection()
event_list = generate_similarity_scores(arts_data,'0911177464c463b3fcce005666f13352')
df = compare_attributes(event_list[0])
df.head()