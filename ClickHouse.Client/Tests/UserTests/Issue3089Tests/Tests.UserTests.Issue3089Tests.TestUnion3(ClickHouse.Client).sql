BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableTime

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TableTime
(
	Id   Int32,
	Time Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	NULL as Time_1
FROM
	TableTime x
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	TableTime x_1
UNION DISTINCT
SELECT
	x_2.Time as Time_1
FROM
	TableTime x_2
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	TableTime x_3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableTime

