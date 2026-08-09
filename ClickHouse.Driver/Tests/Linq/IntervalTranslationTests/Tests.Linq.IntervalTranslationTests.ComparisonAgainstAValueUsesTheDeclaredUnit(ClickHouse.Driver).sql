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
	toInt64(900),
	toInt64(9000000000),
	toInt64(9000000000),
	toInt64(900)
)

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
	2,
	toInt64(1800),
	toInt64(18000000000),
	toInt64(18000000000),
	toInt64(1800)
)

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
	3,
	toInt64(2700),
	toInt64(27000000000),
	toInt64(27000000000),
	toInt64(2700)
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > toInt64(1800)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= toInt64(1800)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InTicks > toInt64(18000000000)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InTicks = toInt64(18000000000)

