﻿BeforeExecute
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
(toInt32(1),toInt32(1),'Str1Value'),
(toInt32(2),toInt32(2),'Str2Value'),
(toInt32(3),toInt32(3),'Str3Value'),
(toInt32(4),toInt32(4),'Str4Value'),
(toInt32(5),toInt32(5),'Str5Value'),
(toInt32(6),toInt32(6),'Str6Value'),
(toInt32(7),toInt32(7),'Str7Value'),
(toInt32(8),toInt32(8),'Str8Value'),
(toInt32(9),toInt32(9),'Str9Value'),
(toInt32(10),toInt32(10),'Str10Value')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	t.Id > toInt32(6)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	toInt32(5) < t.Id - toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	toInt32(2) > t.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.IntValue,
	t.StringValue
FROM
	DataClass t
WHERE
	t.Id < toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DataClass

