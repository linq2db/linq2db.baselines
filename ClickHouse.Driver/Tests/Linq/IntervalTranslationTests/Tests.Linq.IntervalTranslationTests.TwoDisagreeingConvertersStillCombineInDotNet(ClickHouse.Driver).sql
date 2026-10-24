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
	r.Undeclared,
	r.UndeclaredSeconds,
	r.Undeclared + r.Undeclared,
	r.InSeconds + r.InSeconds,
	r.UndeclaredSeconds + toInt64(1800)
FROM
	DurationRow r
LIMIT 2

