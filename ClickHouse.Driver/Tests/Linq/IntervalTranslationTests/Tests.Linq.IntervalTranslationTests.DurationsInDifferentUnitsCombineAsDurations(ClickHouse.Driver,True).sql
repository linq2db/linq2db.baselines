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
	r.InSeconds + r.InSeconds,
	r.InTicks + r.InTicks,
	toInt64(r.InSeconds * toInt64(10000000) + r.InTicks),
	toInt64(r.InSeconds * toInt64(10000000) - r.InTicks),
	toInt64(r.InTicks - r.InSeconds * toInt64(10000000)),
	toInt64(toInt64(r.InSeconds * toInt64(10000000) + r.InTicks) + r.InSeconds * toInt64(10000000)),
	toInt64(negate(r.InSeconds) * toInt64(10000000) + r.InTicks),
	toInt64(r.InSeconds * toInt64(10000000) + r.InTicks),
	toInt64(r.InSeconds * toInt64(10000000) + r.InTicks) + r.InTicks + r.InTicks,
	toInt64(toInt64(r.InSeconds + r.InSeconds) * toInt64(10000000) + r.InTicks) - (r.InTicks + r.InTicks),
	toInt64(negate(r.InSeconds) * toInt64(10000000) - r.InTicks)
FROM
	DurationRow r
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toInt64(r.InSeconds * toInt64(10000000) + r.InTicks)
FROM
	DurationRow r
LIMIT 2

