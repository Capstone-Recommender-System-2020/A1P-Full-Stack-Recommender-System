**What is in this GitHub project?**
- Repositories
  - A1P-Full-Stack-Recommender-System (Main repository)
    - Branches
      - main
        - Consists of 3 types of React app folders
      - main_new
        - Serves as another copy of the back-end
  - Final Recommender Engine (Back-up repository without the React app)

**FILE TREE**

**Primary ("main" repository)**
- MachineLearning (Project folder)
  - frontend (Front-end)
    - react_app (React app folder)
  - Projects (Back-end)
    - DjangoRestAPIDemo
      - APIProjectFolder (Django app folder)
        - APIProject (Admin tools)
        - Prediction (Algorithm code and API)

**Secondary ("main_new" repository)**
- djangoproject (Project folder)
  - djangoapp (Algorithm code and API)
  - djangoproject (Admin tools)
  - reactapp (Front-end)  
      
**HOW TO IMPORT THE DATABASE TO POSTGRESQL**

**Pre-requisites:**

- Installed PostgreSQL and currently in pgAdmin4

**Process for uploading database into PostgreSQL:**

1. Once in pgAdmin4, right click on “Databases” and create a new database
2. Once created, right-click on the newly created database and choose “Restore”
3. Use the file-path where the “PostgresDatabaseScript.sql” file is stored and place it in the “Filename” section
4. Click on “Restore”

The new database will now contain the tables and data that are necessary for the Django app.
~
**REQUIREMENTS & TECH STACK**

**Stack**

- Django (Back-end)
- React (Front-end)
- PostgreSQL (Database)

**Additional Information**
- Postman (API Tester)
- See requirements.txt for a list of packages to install
- Here is an option to add sign up functionality: https://github.com/cornflourblue/react-signup-verification-boilerplate   
       
 **ERRORS WE HAD RUN INTO**

 - We were running into a 500: Internal Server error when we were connecting the React page to Django
 - Everything on Github was working well on one of our team member's (Krishnasai Chalasani) local machine as he was able to successfully run the Django server, build connections with the APIs and test them on Postman, and run the React server, but when another person had cloned the "main" repository and tried it on his machine, he ran into some errors.

**RECOMMENDED NEXT STEPS**

**GitHub**
- Solve issues when cloning repository

**Application**
- Dockerize the Django and React app: https://medium.com/@gagansh7171/dockerize-your-django-and-react-app-68a7b73ab6e9

**Database**
1. Set up PostgreSQL database on Heroku or AWS Relational Database Service (RDS) to make the database remote:
  - Heroku: https://www.heroku.com/postgres
  - AWS RDS: https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/migrate-an-on-premises-postgresql-database-to-amazon-rds-for-postgresql.html
2. Once done, change settings.py in Django under “Databases” to connect to remote database instead of local database

**Front-End (React)**
1. Solve connection issues (500 error) with API for a sample React page
2. Once you have solved the connection issues for the sample React page, connect each component of the ideal React app with APIs by adding “axios.get” functions to App.js for components on page

**HELPFUL INFORMATION**

**Testing APIs in Postman**
1. Download Postman: https://www.postman.com/downloads/
2. Open the Postman app 
3. Create a new API, specifying either GET or POST
4. Enter the API url
5. Click on "Body" and choose "Raw" to enter in input that will be passed into the API
6. Click on the "Send" button to send a request to the API
7. You will see the JSON response below

**Creating and activating virtual environment**
1. Go to command line
2. Navigate to file directory that contains code
3. Run this command: virtualenv "placeholder for what you want to name your virtual environment - remove quotation marks"
4. After it is created, run this command: "placeholder for what you want to name your virtual environment - remove quotation marks"\Scripts\activate
5. You are now in your virtual environment

**Running Django server**
1. Go to command line
2. Navigate to file directory that contains virtual environment folder
3. Activate virtual environment
4. Navigate to file directory that contains manage.py
5. Run this command: python manage.py runserver
6. You have now launched the Django server

**Running React server**
1. Go to command line
2. Navigate to file directory that contains the "reactapp" folder
3. Run this command: npm start

**Installing packages through "requirements.txt"**
1. Go to command line
2. Navigate to file directory that contains the "requirements.txt" file
3. Run this command: pip install -r requirements.txt
4. You have now installed all necessary packages and dependencies
