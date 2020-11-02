
# Example python program to read data from a PostgreSQL table

# and load into a pandas DataFrame
def create_connection():
    import psycopg2

    import pandas as pd

    from sqlalchemy import create_engine



    # Create an engine instance

    postgres_Engine   = create_engine('postgresql+psycopg2://postgres:@127.0.0.1', pool_recycle=3600);



    # Connect to PostgreSQL server

    dbConnection    = postgres_Engine.connect();



    # Read data from PostgreSQL database table and load into a DataFrame instance

    arts_data       = pd.read_sql("select * from \"arts_data\"", dbConnection);



    pd.set_option('display.expand_frame_repr', False);



    # Close the database connection

    dbConnection.close();
     # return the DataFrame

    return(arts_data);

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

    """
    I changed the pct_to_increment from 100/len(arts_data.index) which was giving us 100/132rows which is 
    wrong bc we should be calculating the individual weight of the columns by the total columns.
    """
    pct_to_increment = 100/len(arts_data.columns)
    # 2 while loops will compare each row and its attributes
    # to all other rows and their attributes
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

# here we iterate through the event's list created above.
for event in event_list:

    print(event.id)
    # looping through event similarity scores
    # CURRENT SCORE
    for score in event.similarity_scores:
        # if the current event doesnt have any 5 scores, it will keep adding to the list until there
        # are 5.
        if len(event.most_similar_events.items()) < 5:
            event.most_similar_events[score] = event.similarity_scores[score]
            # the else statement below replaces the lowest similarity score from the
            # list above, with the current value if it's higher.
        else:
            # here, find lowest score in most similar event's dictionary then compare that
            # score with the current score, if the score is higher, replace that.

            for key in event.most_similar_events.keys():
                if event.similarity_scores[score] > event.most_similar_events[key]:
                    event.most_similar_events[score] = event.similarity_scores[score]
                    event.most_similar_events.pop(key)
                    break
    # The code below creates a column for each event and adds it's most 5 similar events and their scores
    # as the column value.
    print(event.most_similar_events)

