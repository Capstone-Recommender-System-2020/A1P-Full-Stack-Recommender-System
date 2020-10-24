
"""

We need a connection to the data so we can then run the data through the
algorithm
arts_data = Should connect to a db with all events.
"""
"""
This algorithm will recommend events based on their attributes similarity
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
    #initialize i and j as 0
    event = Event()
    event.id = arts_data.loc[i][1]
    event.name = arts_data.loc[i][2] # CHANGE THE 2 here to the column index wherever I insert the
    #event Name into. 
    j = 0
    
    #takes 100 divided by total column length to result in the weight each attribute will carry
    
    """
    I changed the pct_to_increment from 100/len(arts_data.index) which was giving us 100/132rows which is 
    wrong bc we should be calculating the individual weight of the columns by the total columns.
    """
    pct_to_increment = 100/len(arts_data.columns) 
    #2 while loops will compare each row and its attributes
    # to all other rows and their attributes 
    while j < len(arts_data.index):
        k = 0
        sim_attributes=0
    
        #... k, where it will move across each attribute column and if it's a match, it will 
        #increment the similarity score.
        while k < len(arts_data.columns):
#            
            if arts_data.loc[i][k] == arts_data.loc[j][k]:
               
                sim_attributes += pct_to_increment
               
            k+=1
       
        #event below is the i'th event object, it's adding a dict object with a key of the 
        # j'th event and assigning a similarity score based on it's common attributes with the i'th row.
        event.similarity_scores[arts_data.loc[j][1]] = (sim_attributes)
        j+=1
    
    #each event i, is appended to event list, which allows us to iterate through it below...
    event_list.append(event)
        
#here we iterate through the event's list created above.
for event in event_list:
    
    print(event.id)
    #looping through event similarity scores 
    #CURRENT SCORE
    for score in event.similarity_scores:
        #if the current event doesnt have any 5 scores, it will keep adding to the list until there
        #are 5. 
        if len(event.most_similar_events.items())<5:
            event.most_similar_events[score] = event.similarity_scores[score]
            #the else statement below replaces the lowest similarity score from the
            #list above, with the current value if it's higher.
        else:
            # here, find lowest score in most similar event's dictionary then compare that
            #score with the current score, if the score is higher, replace that.
    
            for key in event.most_similar_events.keys():
                if event.similarity_scores[score] > event.most_similar_events[key]:
                    event.most_similar_events[score] = event.similarity_scores[score]
                    event.most_similar_events.pop(key)
                    break
    #The code below creates a column for each event and adds it's most 5 similar events and their scores
    #as the column value.
    print(event.most_similar_events)