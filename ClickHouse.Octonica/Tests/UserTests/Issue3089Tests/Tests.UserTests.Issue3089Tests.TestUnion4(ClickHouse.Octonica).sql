BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableTime

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TableTime
(
	Id   Int32,
	Time Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDateTime(NULL) as Time_1
FROM
	TableTime x
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	TableTime x_1
UNION DISTINCT
SELECT
	NULL as Time_1
FROM
	TableTime x_2
UNION DISTINCT
SELECT
	x_3.Time as Time_1
FROM
	TableTime x_3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableTime

