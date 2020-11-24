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

        
 **ERRORS WE HAD RUN INTO**

 - We were running into a 500: Internal Server error when we were connecting the React page to Django
 - Everything on Github was working well on one of our team member's local machine, but when another person had cloned this repository and tried it on his machine, he ran into some errors. We did not have time to test whether docker could solve this problem, but we recommend taking that direction.
