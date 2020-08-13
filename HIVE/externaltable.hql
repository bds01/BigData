CREATE EXTERNAL TABLE Contacts (
 ContactId INT,
 FirstName STRING,
 LastName STRING,
 Address STRING,
 City STRING,
 State STRING,
 Zip STRING,
 Phone STRING,
 Email STRING
 )
 ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
 STORED AS TEXTFILE
 LOCATION '/user/james/contacts'
 tblproperties ("skip.header.line.count"="1");
