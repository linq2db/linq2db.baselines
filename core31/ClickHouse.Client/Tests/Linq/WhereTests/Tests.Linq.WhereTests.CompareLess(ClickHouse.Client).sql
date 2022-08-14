BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereCompareData

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WhereCompareData
(
	Id            Int32,
	NotNullable   Int32,
	Nullable      Nullable(Int32),
	OtherNullable Nullable(Int32),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO WhereCompareData
(
	Id,
	NotNullable,
	Nullable,
	OtherNullable
)
VALUES
(toInt32(1),toInt32(1),NULL,toInt32(10)),
(toInt32(2),toInt32(1),toInt32(10),toInt32(10)),
(toInt32(3),toInt32(1),toInt32(10),NULL),
(toInt32(4),toInt32(1),NULL,NULL),
(toInt32(5),toInt32(1),NULL,toInt32(20)),
(toInt32(6),toInt32(1),toInt32(10),toInt32(20)),
(toInt32(7),toInt32(1),toInt32(10),NULL),
(toInt32(8),toInt32(1),NULL,NULL),
(toInt32(9),toInt32(1),NULL,toInt32(20)),
(toInt32(10),toInt32(1),toInt32(30),toInt32(20)),
(toInt32(11),toInt32(1),toInt32(30),NULL),
(toInt32(12),toInt32(1),NULL,NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.Nullable < p.OtherNullable

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	(p.Nullable >= p.OtherNullable OR p.Nullable IS NULL OR p.OtherNullable IS NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.OtherNullable > p.Nullable

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	(p.OtherNullable <= p.Nullable OR p.OtherNullable IS NULL OR p.Nullable IS NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereCompareData

