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
	r.InSeconds * toInt64(10000000) = r.InTicks

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds * toInt64(10000000) > r.InTicks

