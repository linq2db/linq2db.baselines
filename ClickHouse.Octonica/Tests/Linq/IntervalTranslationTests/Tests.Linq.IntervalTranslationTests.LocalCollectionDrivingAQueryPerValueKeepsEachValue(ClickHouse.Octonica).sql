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
	toInt64(900),
	toInt64(9000000000),
	toInt64(9000000000),
	toInt64(900)
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
	toInt64(2700),
	toInt64(27000000000),
	toInt64(27000000000),
	toInt64(2700)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id,
	x.InSeconds,
	x.InTicks,
	x.Undeclared,
	x.UndeclaredSeconds
FROM
	DurationRow x
WHERE
	x.InSeconds >= toInt64(900) AND x.InSeconds <= toInt64(900)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id,
	x.InSeconds,
	x.InTicks,
	x.Undeclared,
	x.UndeclaredSeconds
FROM
	DurationRow x
WHERE
	x.InSeconds >= toInt64(2700) AND x.InSeconds <= toInt64(2700)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id,
	x.InSeconds,
	x.InTicks,
	x.Undeclared,
	x.UndeclaredSeconds
FROM
	DurationRow x
WHERE
	x.InSeconds >= toInt64(900) AND x.InSeconds <= toInt64(900)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id,
	x.InSeconds,
	x.InTicks,
	x.Undeclared,
	x.UndeclaredSeconds
FROM
	DurationRow x
WHERE
	x.InSeconds >= toInt64(2700) AND x.InSeconds <= toInt64(2700)

