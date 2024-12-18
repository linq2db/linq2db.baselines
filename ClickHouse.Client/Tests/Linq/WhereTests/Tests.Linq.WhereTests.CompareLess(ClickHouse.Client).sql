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
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.Nullable < p.OtherNullable AND p.Nullable IS NOT NULL AND
	p.OtherNullable IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1

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
	p.Nullable >= p.OtherNullable AND p.Nullable IS NOT NULL AND
	p.OtherNullable IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereCompareData

