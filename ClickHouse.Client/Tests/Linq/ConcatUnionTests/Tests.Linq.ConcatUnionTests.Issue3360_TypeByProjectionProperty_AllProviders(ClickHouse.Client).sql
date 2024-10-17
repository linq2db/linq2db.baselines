BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3360Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue3360Table
(
	Id  Int32,
	Str Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	toString('str1') as Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	toString('str2') as Str
FROM
	Issue3360Table p_1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	toString('str2') as Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	toString('str1') as Str
FROM
	Issue3360Table p_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3360Table

