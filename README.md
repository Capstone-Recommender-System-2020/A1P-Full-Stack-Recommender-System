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

**FILE TREE**
- MachineLearning (Project folder)
  - frontend (Front-end)
    - react_app (React app folder)
  - Projects (Back-end)
    - DjangoRestAPIDemo
      - APIProjectFolder (Django app folder)
        - APIProject (Admin tools)
        - Prediction (Algorithm code and API)


