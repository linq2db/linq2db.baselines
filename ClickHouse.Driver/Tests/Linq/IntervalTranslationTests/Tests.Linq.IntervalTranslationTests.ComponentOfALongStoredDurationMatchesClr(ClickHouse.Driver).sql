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
	toInt64(3000000005),
	toInt64(30000000050000000),
	toInt64(30000000050000000),
	toInt64(3000000005)
)

-- ClickHouse.Driver ClickHouse
SELECT
	toInt32(intDiv(r.InSeconds, toInt64(86400))),
	toInt32(intDiv(r.InSeconds, toInt64(3600)) % toInt64(24)),
	toInt32(intDiv(r.InSeconds, toInt64(60)) % toInt64(60)),
	toInt32(r.InSeconds % toInt64(60))
FROM
	DurationRow r
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	toInt32(r.InSeconds % toInt64(60)) = 5

