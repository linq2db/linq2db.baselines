BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MasterClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS MasterClass
(
	Id1        Int32,
	Id2        Int32,
	Value      Nullable(String),
	ByteValues Nullable(String),

	PRIMARY KEY (Id1, Id2)
)
ENGINE = MergeTree()
ORDER BY (Id1, Id2)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO MasterClass
(
	Id1,
	Id2,
	Value,
	ByteValues
)
VALUES
(toInt32(1),toInt32(1),'Str1',NULL),
(toInt32(2),toInt32(2),'Str2',NULL),
(toInt32(3),toInt32(3),'Str3',NULL),
(toInt32(4),toInt32(4),'Str4',NULL),
(toInt32(5),toInt32(5),'Str5',NULL),
(toInt32(6),toInt32(6),'Str6',NULL),
(toInt32(7),toInt32(7),'Str7',NULL),
(toInt32(8),toInt32(8),'Str8',NULL),
(toInt32(9),toInt32(9),'Str9',NULL),
(toInt32(10),toInt32(10),'Str10',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id1,
	e.Value,
	e.ByteValues
FROM
	MasterClass e
UNION ALL
SELECT
	e_1.Id1,
	'Str',
	e_1.ByteValues
FROM
	MasterClass e_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MasterClass

