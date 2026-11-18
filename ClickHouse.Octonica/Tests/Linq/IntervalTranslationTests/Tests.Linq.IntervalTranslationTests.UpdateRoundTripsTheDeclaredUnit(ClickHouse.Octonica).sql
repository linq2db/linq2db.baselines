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
	toInt64(4567),
	toInt64(45670000000),
	toInt64(45670000000),
	toInt64(4567)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.Undeclared,
	t1.UndeclaredSeconds
FROM
	DurationRow t1
LIMIT 2

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	DurationRow
UPDATE
	InSeconds = toInt64(19260),
	InTicks = toInt64(192600000000),
	Undeclared = toInt64(45670000000),
	UndeclaredSeconds = toInt64(4567)
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.Undeclared,
	t1.UndeclaredSeconds
FROM
	DurationRow t1
LIMIT 2

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	DurationRow
UPDATE
	InSeconds = toInt64(4567),
	InTicks = toInt64(45670000000)
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.Undeclared,
	t1.UndeclaredSeconds
FROM
	DurationRow t1
LIMIT 2

