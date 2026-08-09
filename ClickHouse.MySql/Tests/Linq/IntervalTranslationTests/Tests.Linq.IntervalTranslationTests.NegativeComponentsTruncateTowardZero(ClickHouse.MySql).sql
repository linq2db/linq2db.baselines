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
	toInt64(-90000),
	toInt64(-900000000000),
	toInt64(-900000000000),
	toInt64(-90000)
)

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(toInt64(r.InSeconds) * toInt64(10000000), toInt64(864000000000))),
	toInt32(intDiv(toInt64(r.InSeconds) * toInt64(10000000), toInt64(36000000000)) % toInt64(24)),
	toFloat64(toInt64(r.InSeconds) * toInt64(10000000)) / toFloat64(36000000000)
FROM
	DurationRow r
LIMIT 2

