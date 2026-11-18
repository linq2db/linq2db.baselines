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
	toInt64(183845),
	toInt64(1838450000000),
	toInt64(1838450000000),
	toInt64(183845)
)

-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(r.InSeconds) / toFloat64(3600),
	toInt32(intDiv(r.InSeconds, toInt64(3600)) % toInt64(24)),
	toFloat64(r.InTicks) / toFloat64(600000000)
FROM
	DurationRow r
LIMIT 2

