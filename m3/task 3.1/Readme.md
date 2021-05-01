I have installed **mysql** on ubuntu server.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/sql%20%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD.png">

Created a clubs database with three tables using the command **CREATE DATABASE clubs**   
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/%D1%82%D0%B0%D0%B1%D0%BB%D0%B8%D1%86%D1%8B%20%D0%B2%20%D0%B1%D0%B0%D0%B7%D0%B5.png">

Tables were created with the **CREATE TABLE** command. Entering data into tables was done with the **INSERT INTO** command.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/insert.png">

Adding a new column to a table  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/%D0%B4%D0%BE%D0%B1%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D1%81%D1%82%D0%BE%D0%BB%D0%B1%D1%86%D0%BE%D0%B2.png">

Adding data to a new column  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/%D0%B7%D0%B0%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BD%D0%BE%D0%B2%D0%BE%D0%B3%D0%BE%20%D1%81%D1%82%D0%BE%D0%B1%D0%BB%D1%86%D0%B0.png">

Using **SELECT** and **WHERE** Clauses  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/select_from.png">

Using **SELECT** and **ORDER BY** Clauses  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/select%20order%20%D1%81%20%D0%BF%D0%B0%D1%80%D0%B0%D0%BC%D0%B5%D1%82%D1%80%D0%BE%D0%BC%20%D0%B7%D0%B0%D1%80%D0%BF%D0%BB%D0%B0%D1%82%D0%B0%20%D0%BF%D0%BE%20%D1%83%D0%B1%D1%8B%D0%B2%D0%B0%D0%BD%D0%B8%D1%8E.png">

Using **SELECT** and **GROUP BY** Clauses. The data is displayed in ascending order in the *salary* column.    
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/select%20group.png">

More complex construction using operators **SELECT**, **WHERE** and **AND**.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/%D0%B2%D1%8B%D0%B2%D0%BE%D0%B4%20%D0%B8%D0%B7%20%D0%B1%D0%B0%D0%B7%D1%8B%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D0%B4%D0%B8%D0%BD%D0%B0%D0%BC%D0%BE%D0%B2%D1%86%D0%B5%D0%B2.png">

**Working with privileges**. 
Created user *ben* without permission to create databases. He failed to create the database.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/create_denied.png">

User *Mike* is allowed to make a selection in the database.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/select%20mike%20granted.png">

The user *Editor* has been given all rights to the database.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/grant.png">

Made a backup of the database.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/mysql%20%D0%B1%D1%8D%D0%BA%D0%B0%D0%BF.png">

Using the **DROP** operator. Deleted the coahes table.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/%D1%82%D0%B0%D0%B1%D0%BB%D0%B8%D1%86%D0%B0%20%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%B0.png">

The database was restored from a backup.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/%D0%B1%D0%B0%D0%B7%D0%B0%20%D0%B2%D0%BE%D1%81%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B01.png">  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/%D0%B1%D0%B0%D0%B7%D0%B0%20%D0%B2%D0%BE%D1%81%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B02.png">

**Transfer** my local database to RDS AWS.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/connect%20to%20rds.png">

Working with the base, which is located on the RDS, through the console.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/%D0%B2%D1%8B%D0%B1%D0%BE%D1%80%20%D1%82%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D1%88%D0%B0%D1%85%D1%82%D0%B5%D1%80%D0%B0.png">

<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/select%20where%20group%20order%20RDS.png">

Create the dump of my database which is located on the RDS.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/dump%20db%20from%20rds.png">

An Amazon DynamoDB table created.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/dynamo%20DB%20table%20created.png">

Using Query and Scan in my database on an Amazon DynamoDB.  
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/dynamo%20DB%20scan.png">
<img src="https://github.com/berkutov-stas/DevOps_online_Kiev_2021Q1/blob/main/m3/task%203.1/dynamo%20DB%20query.png">
