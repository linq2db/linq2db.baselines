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
	toInt64(183845),
	toInt64(1838450000000),
	toInt64(1838450000000),
	toInt64(183845)
)

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(toInt64(r.InSeconds) * toInt64(10000000)) / toFloat64(36000000000),
	toInt32(intDiv(toInt64(r.InSeconds) * toInt64(10000000), toInt64(36000000000)) % toInt64(24)),
	toFloat64(toInt64(r.InTicks)) / toFloat64(600000000)
FROM
	DurationRow r
LIMIT 2

