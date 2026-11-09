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
	toInt64(50),
	toInt64(500000000),
	toInt64(500000000),
	toInt64(50)
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
	toInt64(150),
	toInt64(1500000000),
	toInt64(1500000000),
	toInt64(150)
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
	toInt64(200),
	toInt64(2000000000),
	toInt64(2000000000),
	toInt64(200)
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
	4,
	toInt64(30),
	toInt64(300000000),
	toInt64(300000000),
	toInt64(30)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Key_1,
	t1.Count_1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.c1 ORDER BY e.TotalSeconds DESC, e.Key_1)) as RowNumber,
			e.TotalSeconds as TotalSeconds,
			e.Key_1 as Key_1,
			e.Count_1 as Count_1
		FROM
			(
				SELECT
					g_1.InSeconds > toInt64(100) as c1,
					toFloat64(g_1.InSeconds) as TotalSeconds,
					g_1.InSeconds as Key_1,
					COUNT(*) as Count_1
				FROM
					DurationRow g_1
				GROUP BY
					g_1.InSeconds
			) e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.TotalSeconds DESC,
	t1.Key_1

