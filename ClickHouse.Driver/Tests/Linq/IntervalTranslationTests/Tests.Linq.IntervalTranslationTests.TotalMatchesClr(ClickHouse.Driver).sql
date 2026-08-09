-- ClickHouse.Driver ClickHouse
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
	toInt64(5400),
	toInt64(54000000000),
	toInt64(54000000000),
	toInt64(5400)
)

-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(toInt64(r.InSeconds) * toInt64(10000000)) / toFloat64(36000000000),
	toFloat64(toInt64(r.InSeconds) * toInt64(10000000)) / toFloat64(600000000),
	toFloat64(toInt64(r.InTicks)) / toFloat64(36000000000)
FROM
	DurationRow r
LIMIT 2

