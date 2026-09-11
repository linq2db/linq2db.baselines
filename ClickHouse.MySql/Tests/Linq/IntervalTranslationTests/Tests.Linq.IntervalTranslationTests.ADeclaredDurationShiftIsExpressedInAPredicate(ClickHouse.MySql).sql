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
	toInt64(5400),
	toInt64(54000000000),
	toInt64(54000000000),
	toInt64(5400)
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	toDateTime64('2026-03-01 00:00:00.0000000', 7) + toIntervalNanosecond((r.InSeconds * toInt64(10000000)) * toInt64(100)) > toDateTime64('2026-03-01 01:00:00.0000000', 7)

