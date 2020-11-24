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

**Primary**
- MachineLearning (Project folder)
  - frontend (Front-end)
    - react_app (React app folder)
  - Projects (Back-end)
    - DjangoRestAPIDemo
      - APIProjectFolder (Django app folder)
        - APIProject (Admin tools)
        - Prediction (Algorithm code and API)

**Secondary**
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

**REQUIREMENTS & TECH STACK**

**Stack**

- Django
- React
- PostgreSQL
- See requirements.txt for a list of packages to install
- Here is an option to add sign up functionality: https://github.com/cornflourblue/react-signup-verification-boilerplate
        
 **ERRORS WE HAD RUN INTO**

 - We were running into a 500: Internal Server error when we were connecting the React page to Django
 - Everything on Github was working well on one of our team member's (Krishnasai Chalasani) local machine, but when another person had cloned this repository and tried it on his machine, he ran into some errors.

**RECOMMENDED NEXT STEPS**

**Database**
1. Set up PostgreSQL database on Heroku or AWS Relational Database Service (RDS) to make the database remote:
  - Heroku: https://www.heroku.com/postgres
  - AWS RDS: https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/migrate-an-on-premises-postgresql-database-to-amazon-rds-for-postgresql.html
2. Once done, change settings.py in Django under “Databases” to connect to remote database instead of local database

**Application**
- Dockerize the Django and React app: https://medium.com/@gagansh7171/dockerize-your-django-and-react-app-68a7b73ab6e9
