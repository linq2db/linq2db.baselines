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
SELECT
	(
		SELECT
			minOrNull(t2.InSeconds)
		FROM
			DurationRow t2
	),
	(
		SELECT
			minOrNull(t3.InTicks)
		FROM
			DurationRow t3
	),
	(
		SELECT
			minOrNull(t4.UndeclaredSeconds)
		FROM
			DurationRow t4
	),
	(
		SELECT
			maxOrNull(t5.InSeconds)
		FROM
			DurationRow t5
	)
FROM
	DurationRow t1
LIMIT 1

