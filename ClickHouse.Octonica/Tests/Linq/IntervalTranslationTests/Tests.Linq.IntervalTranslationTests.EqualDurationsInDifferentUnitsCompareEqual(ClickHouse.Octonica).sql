-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	toInt64(r.InSeconds) * toInt64(10000000) = toInt64(r.InTicks)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	toInt64(r.InSeconds) * toInt64(10000000) > toInt64(r.InTicks)

