CREATE TABLE unpop (
   Country_Name varchar,
   Country_Code varchar,
   Year INTEGER,
   Value BIGINT
);





-- Load CSV data
\copy unpop FROM '/home/xull/Python_MountBlue/SQL_pro/UN_pop/src/data/population.csv' WITH ( FORMAT CSV,HEADER TRUE);


