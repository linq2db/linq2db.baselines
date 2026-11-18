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
	toInt32(intDiv(r.InSeconds, toInt64(86400))),
	toInt32(intDiv(r.InSeconds, toInt64(3600)) % toInt64(24)),
	toInt32(intDiv(r.InSeconds, toInt64(60)) % toInt64(60)),
	toInt32(r.InSeconds % toInt64(60))
FROM
	DurationRow r
LIMIT 2

