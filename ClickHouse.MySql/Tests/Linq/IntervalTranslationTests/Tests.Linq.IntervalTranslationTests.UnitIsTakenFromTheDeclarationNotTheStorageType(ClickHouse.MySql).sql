-- ClickHouse.MySql ClickHouse
INSERT INTO DurationRow
(
	Id,
	InSeconds,
	InTicks,
	Undeclared,
	UndeclaredSeconds
)
VALUES
(
	1,
	toInt64(10800),
	toInt64(108000000000),
	toInt64(108000000000),
	toInt64(10800)
)

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(toInt64(r.InSeconds) * toInt64(10000000)) / toFloat64(36000000000),
	toFloat64(toInt64(r.InTicks)) / toFloat64(36000000000)
FROM
	DurationRow r
LIMIT 2

