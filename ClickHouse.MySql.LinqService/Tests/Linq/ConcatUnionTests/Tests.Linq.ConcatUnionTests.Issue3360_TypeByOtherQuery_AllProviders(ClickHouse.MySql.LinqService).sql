BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3360Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue3360Table
(
	Id  Int32,
	Str Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	toString('str') as Str
FROM
	Issue3360Table p_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	toString('str') as Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	p_1.Str as Str
FROM
	Issue3360Table p_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3360Table

