CREATE TABLE employee (
 name STRING,
 employee_id INT,
 work_place ARRAY<STRING>,
 gender_age STRUCT<gender:STRING,age:INT>,
 skills_score MAP<STRING,INT>,
 depart_title MAP<STRING,ARRAY<STRING>>
 )
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY '|'
 COLLECTION ITEMS TERMINATED BY ','
 MAP KEYS TERMINATED BY ':'
 STORED AS TEXTFILE;
 
LOAD DATA INPATH '/user/james/employee/employee.txt'
OVERWRITE INTO TABLE employee;
