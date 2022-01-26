# Use the mysqldump utility to create a backup of the local cafe_db database
mysqldump --user=root --password='Re:Start!9' --databases cafe_db --add-drop-database > cafedb-backup.sql

# restore the backup to the Amazon RDS database by using the mysql command. You must specify the endpoint address of the RDS instance in the command
# This command creates a mysql connection to the RDS instance and runs the SQL statements in the cafedb-backup.sql file.
mysql --user=root --password='Re:Start!9' --host=<RDS Instance Database Endpoint Address> < cafedb-backup.sql

# verify that the cafe_db was successfully created and populated in the Amazon RDS instance. 
# Open an interactive mysql session to the instance, and retrieve the data in the product table of the cafe_db database
mysql --user=root --password='Re:Start!9' --host=<RDS Instance Database Endpoint Address> cafe_db

# enter the SQL statement to retrieve the data in the product table:
select * from product;
exit


