-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE InSeconds Int64
SET     InSeconds = 50l
DECLARE InTicks Int64
SET     InTicks = 500000000l
DECLARE Undeclared Int64
SET     Undeclared = 500000000l
DECLARE UndeclaredSeconds Int64
SET     UndeclaredSeconds = 50l

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
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

-- YDB Ydb
DECLARE Id Int32
SET     Id = 2
DECLARE InSeconds Int64
SET     InSeconds = 150l
DECLARE InTicks Int64
SET     InTicks = 1500000000l
DECLARE Undeclared Int64
SET     Undeclared = 1500000000l
DECLARE UndeclaredSeconds Int64
SET     UndeclaredSeconds = 150l

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
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

-- YDB Ydb
DECLARE Id Int32
SET     Id = 3
DECLARE InSeconds Int64
SET     InSeconds = 200l
DECLARE InTicks Int64
SET     InTicks = 2000000000l
DECLARE Undeclared Int64
SET     Undeclared = 2000000000l
DECLARE UndeclaredSeconds Int64
SET     UndeclaredSeconds = 200l

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
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

-- YDB Ydb
DECLARE Id Int32
SET     Id = 4
DECLARE InSeconds Int64
SET     InSeconds = 30l
DECLARE InTicks Int64
SET     InTicks = 300000000l
DECLARE Undeclared Int64
SET     Undeclared = 300000000l
DECLARE UndeclaredSeconds Int64
SET     UndeclaredSeconds = 30l

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
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

-- YDB Ydb
DECLARE p Int64
SET     p = 100l

SELECT
	t1.Key_1 as Key_1,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.c1 ORDER BY e.TotalSeconds DESC, e.Key_1) as RowNumber,
			e.TotalSeconds as TotalSeconds,
			e.Key_1 as Key_1,
			e.Count_1 as Count_1
		FROM
			(
				SELECT
					g_1.InSeconds > $p as c1,
					Unwrap(CAST(g_1.InSeconds AS Double)) as TotalSeconds,
					g_1.InSeconds as Key_1,
					COUNT(*) as Count_1
				FROM
					DurationRow g_1
				GROUP BY
					g_1.InSeconds
			) e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.TotalSeconds DESC,
	t1.Key_1

