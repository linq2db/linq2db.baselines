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
	toFloat64(negate(r.InSeconds)) / toFloat64(3600),
	toInt32(intDiv(negate(r.InSeconds), toInt64(3600)) % toInt64(24))
FROM
	DurationRow r
LIMIT 2

