BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MasterClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO MasterClass
(
	Id1,
	Id2,
	Value,
	ByteValues
)
VALUES
(1,1,'Str1',NULL),
(2,2,'Str2',NULL),
(3,3,'Str3',NULL),
(4,4,'Str4',NULL),
(5,5,'Str5',NULL),
(6,6,'Str6',NULL),
(7,7,'Str7',NULL),
(8,8,'Str8',NULL),
(9,9,'Str9',NULL),
(10,10,'Str10',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e1.Id1,
	e1.Value as Value_1,
	e1.ByteValues
FROM
	MasterClass e1
UNION ALL
SELECT
	e.Id1 as Id1,
	toString('Str') as Value_1,
	e.ByteValues as ByteValues
FROM
	MasterClass e

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MasterClass

