﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DataClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DataClass
(
	Id          Int32,
	IntValue    Int32,
	StringValue Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO DataClass
(
	Id,
	IntValue,
	StringValue
)
VALUES
(1,1,'Str1Value'),
(2,2,'Str2Value'),
(3,3,'Str3Value'),
(4,4,'Str4Value'),
(5,5,'Str5Value'),
(6,6,'Str6Value'),
(7,7,'Str7Value'),
(8,8,'Str8Value'),
(9,9,'Str9Value'),
(10,10,'Str10Value')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	t.Id - 1 > 5

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	5 < t.Id - 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	7 - t.Id > 5

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	5 < 7 - t.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DataClass

