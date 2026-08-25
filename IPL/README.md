## Instruction to run

## in terminal run
sudo -u postgres psql

## to create db and user
\i /home/xull/Python_MountBlue/SQL_pro/IPL/src/create_db.sql



## connect to db as user
\c ipl arcadia  password z

## load data to db
 \i /home/xull/Python_MountBlue/SQL_pro/IPL/src/load_data.sql

## run the sql query same for other query, change q2.sql in place of q1.sql and so on in below command
\i /home/xull/Python_MountBlue/SQL_pro/IPL/src/q1.sql