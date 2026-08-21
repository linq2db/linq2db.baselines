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
SELECT
	(
		SELECT
			minOrNull(t2.InSeconds)
		FROM
			DurationRow t2
	),
	(
		SELECT
			maxOrNull(t3.InSeconds)
		FROM
			DurationRow t3
	),
	Coalesce((
		SELECT
			sumOrNull(toFloat64(t4.InSeconds) / toFloat64(60))
		FROM
			DurationRow t4
	), toFloat64(0))
FROM
	DurationRow t1
LIMIT 1

