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
	(
		SELECT
			minOrNull(t1.InSeconds)
		FROM
			DurationRow t1
	),
	(
		SELECT
			maxOrNull(t2.InSeconds)
		FROM
			DurationRow t2
	)
FROM
	DurationRow r
LIMIT 1

-- ClickHouse.Driver ClickHouse
SELECT
	(
		SELECT
			minOrNull(t1.InSeconds)
		FROM
			DurationRow t1
	),
	(
		SELECT
			maxOrNull(t2.InSeconds)
		FROM
			DurationRow t2
	)
FROM
	DurationRow r
LIMIT 1

-- ClickHouse.Driver ClickHouse
SELECT
	(
		SELECT
			minOrNull(t1.InSeconds)
		FROM
			DurationRow t1
	)
FROM
	DurationRow r
WHERE
	r.InSeconds > toInt64(60)
LIMIT 1

