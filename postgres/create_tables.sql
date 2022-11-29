-- спарк!

CREATE TABLE IF NOT EXISTS Web (
  Id INT NOT NULL,
  Timestamp  INTEGER NOT  NULL,
  Type VARCHAR(200) NOT NULL,
  Page_id INT NOT NULL,
  Tag  VARCHAR(200) NOT NULL,
  Sign BOOLEAN NOT NULL
);

--schema_web = T.StructType(fields=[
--    T.StructField("id", T.LongType()',
--   T.StructField("timestamp", T.LongType()',
--    T.StructField("type", T.StringType()',
--    T.StructField("page_id", T.LongType()',
--    T.StructField("tag", T.StringType()',
--    T.StructField("sign", T.BooleanType(')
--])

CREATE TABLE IF NOT EXISTS Lk (
  Id_cab INT NOT NULL,
  User_id INT NOT NULL,
  FIO VARCHAR(200) NOT NULL,
  BirthDay DATE NOT NULL,
  Cab_Regdate DATE NOT NULL
);
--schema_lk = T.StructType(fields=[
--    T.StructField("id_cab", T.LongType()',
--   T.StructField("user_id", T.LongType()',
--    T.StructField("FIO", T.StringType()',
--    T.StructField("birthdate", T.DateType()',
--    T.StructField("cab_regdate", T.DateType()',
-- ])

INSERT INTO Web(
  Id
  ,Timestamp
  ,Type
  ,Page_id
  ,Tag
  ,Sign
)
VALUES
 (1, 1667627426, 'visit', 101, 'Sport', False)
,(1, 1667627026, 'scroll', 101, 'Sport', False)
,(1, 1667627880, 'click', 101, 'Sport', False)
,(1, 1667627889, 'click', 101, 'Sport', False)
,(1, 1667627980, 'visit', 102, 'Politics', False)
,(1, 1667627180, 'click', 102, 'Politics', False)
,(1, 1667628180, 'visit', 103, 'Politics', False)
,(2, 1647628326, 'visit', 104, 'Politics', True)
,(2, 1669628526, 'scroll', 104, 'Politics', True)
,(2, 1667628680, 'click', 104, 'Politics', True)
,(2, 1668628880, 'visit', 105, 'Business', True)
,(2, 1667638810, 'click', 105, 'Business', True)
,(2, 1667628819, 'click', 105, 'Business', True)
,(3, 1667624980, 'visit', 106, 'Sport', False)
,(3, 1667609180, 'click', 106, 'Sport', False)
,(3, 1667629480, 'visit', 107, 'Politics', False)
,(4, 1667626426, 'visit', 101, '1945', False)
,(4, 1667625027, 'scroll', 101, '1945', False)
,(4, 1667624886, 'click', 101, '1945', False)
,(4, 1667637885, 'click', 101, '1945', False)
,(4, 1667622984, 'visit', 102, 'Games', False)
,(4, 1667621183, 'click', 102, 'Games', False)
,(4, 1667620182, 'visit', 103, 'Games', False)
,(5, 1647629321, 'visit', 104, 'Games', True)
,(5, 1669625820, 'scroll', 104, 'Games', True)
,(5, 1667627681, 'click', 104, 'Games', True)
,(5, 1668626882, 'visit', 105, 'Fortran', True)
,(5, 1667635813, 'click', 105, 'Programming', True)
,(5, 1667624814, 'click', 105, 'Programming', True)
,(1, 1667633985, 'visit', 106, '1945', False)
,(2, 1667612186, 'click', 106, '1945', False)
,(3, 1667629488, 'visit', 107, 'Sport', False)
,(4, 1667000589, 'scroll', 107, 'Games', False)
,(1, 1647699321, 'visit', 104, 'Games', True)
,(2, 1669685820, 'scroll', 104, 'Games', True)
,(3, 1667677681, 'click', 104, 'Sport', True)
,(4, 1668666882, 'visit', 105, 'Python', True)
,(5, 1667655813, 'click', 105, 'SCALA', True)
,(6, 1667644814, 'click', 105, 'PHP', True)
,(7, 1667633985, 'visit', 106, '1945', False)
,(8, 1667622186, 'click', 106, '1945', False)
,(9, 1667601488, 'visit', 107, 'Games', False)
,(1, 1667010589, 'scroll', 107, 'Sport', False);


INSERT INTO Lk(
  Id_cab,
  User_id,
  FIO,
  BirthDay,
  Cab_Regdate
)
VALUES
 (101,1,'Иванов Иван Иванович', '1990-7-5', '2016-8-15')
,(102,2,'Петрова Петра Петручевна', '2001-12-1', '2020-4-1')
,(103,3,'Чугунова Марья Ивановна', '1995,3,15', '2017,5,17')
,(104,4,'Козлодоев Лёлик Боликович', '1993,8,19', '2021,12,30')
,(105,5,'Сергеева Анжелика Ибрагимовна', '1999,1,29', '2022,2,23')
,(106,6,'Трумп Дональд Руандович', '1983,4,12', '2020,1,22')
,(105,7,'КоКо Клавдия Юрьевна', '1978,1,5', '2021,3,13')
,(106,8,'Клуни Константин Плятович', '1973,9,22', '2017,8,8')
,(115,9,'Сычев Слава Славович', '1988,5,15', '1997,9,23')
,(116,10,'Хрюнов Вова Изевич', '1993,4,12', '2000,1,1')
,(116,11,'Сикретова Кэт Радиоловна', '1963,3,18', '1999,6,6')