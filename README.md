Pre-requisites:
Installed PostgreSQL and currently in pgAdmin4

Process for uploading database into PostgreSQL:
Once in pgAdmin4, right click on “Databases” and create a new database
Once created, right-click on the newly created database and choose “Restore”
Use the file-path where the “PostgresDatabaseScript.sql” file is stored and place it in the “Filename” section
Click on “Restore”
The new database will now contain the tables and data that are necessary for the Django app.
