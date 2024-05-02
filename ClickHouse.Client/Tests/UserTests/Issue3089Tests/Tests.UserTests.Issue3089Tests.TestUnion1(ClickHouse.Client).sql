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
	x.Time as Time_1
FROM
	TableTime x
UNION DISTINCT
SELECT
	toDateTime(NULL) as Time_1
FROM
	TableTime x_1
UNION DISTINCT
SELECT
	toDateTime(NULL) as Time_1
FROM
	TableTime x_2
UNION DISTINCT
SELECT
	toDateTime(NULL) as Time_1
FROM
	TableTime x_3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableTime

