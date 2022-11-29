-- Creation of product table
CREATE TABLE IF NOT EXISTS product (
  product_id INT NOT NULL,
  name varchar(250) NOT NULL,
  PRIMARY KEY (product_id)
);

...

...

-- Creation of order_status table
CREATE TABLE IF NOT EXISTS order_status (
  order_status_id varchar(200) NOT NULL,
  update_at TIMESTAMP,
  sale_id varchar(200) NOT NULL,
  status_name_id INT NOT NULL,
  PRIMARY KEY (order_status_id),
  CONSTRAINT fk_sale
      FOREIGN KEY(sale_id)
    REFERENCES sale(sale_id),
  CONSTRAINT fk_status_name
      FOREIGN KEY(status_name_id)
    REFERENCES status_name(status_name_id)
);

CREATE TABLE IF NOT EXISTS Web (
  Id INT NOT NULL,
  Timestamp LONG NOT NULL,
  Type varchar(200) NOT NULL,
  Page_id INT NOT NULL,
  Tag  varchar(200) NOT NULL,
  Sign Boolean NOT NULL
);

--schema_web = T.StructType(fields=[
--    T.StructField("id", T.LongType()),
--   T.StructField("timestamp", T.LongType()),
--    T.StructField("type", T.StringType()),
--    T.StructField("page_id", T.LongType()),
--    T.StructField("tag", T.StringType()),
--    T.StructField("sign", T.BooleanType())
--])

CREATE TABLE IF NOT EXISTS Lk (
  Id_cab INT NOT NULL,
  User_id INT NOT NULL,
  FIO varchar(200) NOT NULL,
  BirthDay DATE NOT NULL,
  Cab_Regdate DATE NOT NULL
);
--schema_lk = T.StructType(fields=[
--    T.StructField("id_cab", T.LongType()),
--   T.StructField("user_id", T.LongType()),
--    T.StructField("FIO", T.StringType()),
--    T.StructField("birthdate", T.DateType()),
--    T.StructField("cab_regdate", T.DateType()),
-- ])