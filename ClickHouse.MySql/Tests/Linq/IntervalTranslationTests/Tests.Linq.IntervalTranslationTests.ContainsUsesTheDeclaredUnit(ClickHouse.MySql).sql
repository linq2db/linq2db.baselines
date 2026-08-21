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
	toInt64(900),
	toInt64(9000000000),
	toInt64(9000000000),
	toInt64(900)
)

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
	2,
	toInt64(1800),
	toInt64(18000000000),
	toInt64(18000000000),
	toInt64(1800)
)

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
	3,
	toInt64(2700),
	toInt64(27000000000),
	toInt64(27000000000),
	toInt64(2700)
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds IN (toInt64(900), toInt64(2700))
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InTicks IN (toInt64(9000000000), toInt64(27000000000))
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.InSeconds IN (toInt64(900), toInt64(2700))
FROM
	DurationRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	CASE
		WHEN toInt64(1800) IN (
			SELECT
				r.InSeconds
			FROM
				DurationRow r
		)
			THEN true
		ELSE false
	END

-- ClickHouse.MySql ClickHouse
SELECT
	CASE
		WHEN toInt64(54000000000) IN (
			SELECT
				r.InTicks
			FROM
				DurationRow r
		)
			THEN true
		ELSE false
	END

