BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WhereCompareData

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO WhereCompareData
(
	Id,
	NotNullable,
	Nullable,
	OtherNullable
)
VALUES
(1,1,NULL,10),
(2,1,10,10),
(3,1,10,NULL),
(4,1,NULL,NULL),
(5,1,NULL,20),
(6,1,10,20),
(7,1,10,NULL),
(8,1,NULL,NULL),
(9,1,NULL,20),
(10,1,30,20),
(11,1,30,NULL),
(12,1,NULL,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.Nullable > p.OtherNullable

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.Nullable <= p.OtherNullable OR p.Nullable IS NULL OR
	p.OtherNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.OtherNullable < p.Nullable

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.OtherNullable >= p.Nullable OR p.OtherNullable IS NULL OR
	p.Nullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WhereCompareData

