-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(r.InSeconds) / toFloat64(3600),
	toFloat64(r.InTicks) / toFloat64(36000000000)
FROM
	DurationRow r
LIMIT 2

