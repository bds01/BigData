CREATE TABLE IF NOT EXISTS salesdata (
  Region STRING, 
  Country STRING, 
  Itemtype STRING, 
  Orderdate STRING, 
  Orderid INT, 
  Unitssold INT, 
  Unitprice DOUBLE
  )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
tblproperties ("skip.header.line.count"="1")
;

LOAD DATA INPATH '/user/james/sales/Salesdata.csv'
OVERWRITE INTO TABLE salesdata;
