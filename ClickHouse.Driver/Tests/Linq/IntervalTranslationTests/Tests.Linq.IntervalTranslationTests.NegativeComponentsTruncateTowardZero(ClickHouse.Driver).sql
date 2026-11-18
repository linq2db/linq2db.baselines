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
	toInt64(-90000),
	toInt64(-900000000000),
	toInt64(-900000000000),
	toInt64(-90000)
)

-- ClickHouse.Driver ClickHouse
SELECT
	toInt32(intDiv(r.InSeconds, toInt64(86400))),
	toInt32(intDiv(r.InSeconds, toInt64(3600)) % toInt64(24)),
	toFloat64(r.InSeconds) / toFloat64(3600)
FROM
	DurationRow r
LIMIT 2

