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

WITH RECURSIVE cte AS
(
	SELECT
		p.Id,
		toString('Str1') as Str
	FROM
		Issue3360Table p
	UNION ALL
	SELECT
		t1.Id as Id,
		toString('Str2') as Str
	FROM
		cte t1
			INNER JOIN Issue3360Table r ON t1.Id = r.Id + 1
)
SELECT
	t2.Id,
	t2.Str
FROM
	cte t2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3360Table

