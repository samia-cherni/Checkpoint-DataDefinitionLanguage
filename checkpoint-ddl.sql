
CREATE TABLE Customer (
  Customer_id VARCHAR2(20) CONSTRAINT pk_Customer PRIMARY KEY,
  Customer_name VARCHAR2(20) CONSTRAINT name_notnull NOT NULL,
  Customer_Tel NUMBER
);

CREATE TABLE Product (
  Product_id VARCHAR2(20) CONSTRAINT pk_Product PRIMARY KEY,
  Product_name VARCHAR2(20) CONSTRAINT name_notnull NOT NULL,
  Price NUMBER CONSTRAINT positive_value CHECK (Price>0)
);

CREATE TABLE Orders (
  Customer_id VARCHAR2(20),
  Product_id VARCHAR2(20),
  Quantity NUMBER,
  Total_amount NUMBER,
  CONSTRAINT fk_Customer FOREIGN KEY Customer_id REFERENCES Customer(Customer_id),
  CONSTRAINT fk_Product FOREIGN KEY Product_id REFERENCES Product(Product_id),
);


ALTER TABLE Product ADD Category VARCHAR2(20);

ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE() ;