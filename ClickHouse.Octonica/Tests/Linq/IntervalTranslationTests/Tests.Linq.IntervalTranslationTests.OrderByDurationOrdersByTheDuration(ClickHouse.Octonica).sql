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
	2,
	toInt64(1800),
	toInt64(18000000000),
	toInt64(18000000000),
	toInt64(1800)
)

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
	3,
	toInt64(3600),
	toInt64(36000000000),
	toInt64(36000000000),
	toInt64(3600)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
ORDER BY
	r.InSeconds

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
ORDER BY
	r.InTicks DESC

