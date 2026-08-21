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
	toFloat64(r.InSeconds) / toFloat64(3600),
	toFloat64(r.InSeconds) / toFloat64(60),
	toFloat64(r.InTicks) / toFloat64(36000000000)
FROM
	DurationRow r
LIMIT 2

