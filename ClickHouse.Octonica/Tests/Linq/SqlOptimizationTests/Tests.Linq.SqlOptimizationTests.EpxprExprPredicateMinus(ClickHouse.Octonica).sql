BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DataClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DataClass
(
	Id          Int32,
	IntValue    Int32,
	StringValue Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	t.Id > 6

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	5 < t.Id - 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	2 > t.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	t.Id < 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DataClass

