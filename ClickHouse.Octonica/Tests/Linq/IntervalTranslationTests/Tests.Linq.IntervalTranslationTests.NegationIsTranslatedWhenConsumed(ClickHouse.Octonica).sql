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
	toInt64(5400),
	toInt64(54000000000),
	toInt64(54000000000),
	toInt64(5400)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(toInt64(negate(r.InSeconds)) * toInt64(10000000)) / toFloat64(36000000000),
	toInt32(intDiv(toInt64(negate(r.InSeconds)) * toInt64(10000000), toInt64(36000000000)) % toInt64(24))
FROM
	DurationRow r
LIMIT 2

