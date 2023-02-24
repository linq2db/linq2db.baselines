BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableTime

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TableTime
(
	Id   Int32,
	Time Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Time
FROM
	TableTime x
UNION DISTINCT
SELECT
	NULL
FROM
	TableTime x_1
UNION DISTINCT
SELECT
	NULL
FROM
	TableTime x_2
UNION DISTINCT
SELECT
	NULL
FROM
	TableTime x_3

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableTime

