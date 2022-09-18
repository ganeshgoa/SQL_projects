1 Download project
2 Open pgAdmin, open file 'DB.sql' from this project, execute this file:
  CREATE TABLE international_debt
    (country_name character varying(50),
    country_code character varying(50),
    indicator_name text,
    indicator_code text,
    debt numeric);
  # Here you should use your path to file 'international_debt.csv'
  COPY international_debt FROM 'C:\ALL\test\international_debt.csv' DELIMITER ',' CSV HEADER;
  Now you have database from  dataset: international_debt.csv 
3 Open file 'notebook' in Jupyter:
  install necessary modules: 
                            # Import necessary enviroment 
                            #pip install ipython-sql
                            #pip install sqlalchemy
                            #pip install psycopg2
  Then make connection between your database and jupyter notebook:
        %sql postgresql://username:password@host:port/database
        username:password - pgAdmin username and password
        host:port - ip address of your server in postgresql and port 
        database - database name 
