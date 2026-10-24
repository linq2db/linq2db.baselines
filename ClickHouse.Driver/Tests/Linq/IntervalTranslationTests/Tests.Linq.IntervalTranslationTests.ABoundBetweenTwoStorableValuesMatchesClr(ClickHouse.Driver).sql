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
	toInt64(1),
	toInt64(10000000),
	toInt64(10000000),
	toInt64(1)
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
	toInt64(2),
	toInt64(20000000),
	toInt64(20000000),
	toInt64(2)
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
	toInt64(3),
	toInt64(30000000),
	toInt64(30000000),
	toInt64(3)
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > toInt64(1)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= toInt64(2)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds < toInt64(2)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds <= toInt64(1)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= toInt64(2) AND r.InSeconds <= toInt64(1)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds * toInt64(10000000) <> toInt64(15000000)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > toInt64(1)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds <= toInt64(1)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= toInt64(2) AND r.InSeconds <= toInt64(1)
ORDER BY
	r.Id

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
	toInt64(1),
	toInt64(10000000),
	toInt64(10000000),
	toInt64(1)
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
	toInt64(2),
	toInt64(20000000),
	toInt64(20000000),
	toInt64(2)
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
	toInt64(3),
	toInt64(30000000),
	toInt64(30000000),
	toInt64(3)
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > toInt64(2)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= toInt64(2)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds < toInt64(2)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds <= toInt64(2)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= toInt64(2) AND r.InSeconds <= toInt64(2)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds * toInt64(10000000) <> toInt64(20000000)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > toInt64(2)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds <= toInt64(2)
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= toInt64(2) AND r.InSeconds <= toInt64(2)
ORDER BY
	r.Id

