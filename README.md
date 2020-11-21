**HOW TO IMPORT THE DATABASE TO POSTGRESQL**

**Pre-requisites:**
- Installed PostgreSQL and currently in pgAdmin4

**Process for uploading database into PostgreSQL:**
- Once in pgAdmin4, right click on “Databases” and create a new database
- Once created, right-click on the newly created database and choose “Restore”
- Use the file-path where the “PostgresDatabaseScript.sql” file is stored and place it in the “Filename” section
- Click on “Restore”

The new database will now contain the tables and data that are necessary for the Django app.


**REQUIREMENTS & TECH STACK**

**Stack**
- Django
- React
- Postgresql
- see requirements.txt for a list of packages to install

**FILE TREE**
- djangoproject (app folder)
  - djangoproject (admin tools)
  - djangoapp (API)
  - reactapp (front-end)


