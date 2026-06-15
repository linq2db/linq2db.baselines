-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Key_1 as Key_1,
	t1.Value_1 as Value_1,
	t1.Priority as Priority
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_2.Key_1 ORDER BY e_2.SourceIndex, e_2.Key_1) as RowNumber,
			e_2.Id as Id,
			e_2.Key_1 as Key_1,
			e_2.Value_1 as Value_1,
			e_2.Priority as Priority
		FROM
			(
				SELECT
					e.Id as Id,
					e.`Key` as Key_1,
					e.`Value` as Value_1,
					e.Priority as Priority,
					Unwrap(CAST(0 AS Int32)) as SourceIndex
				FROM
					UnionByLeft e
				UNION ALL
				SELECT
					e_1.Id as Id,
					e_1.`Key` as Key_1,
					e_1.`Value` as Value_1,
					e_1.Priority as Priority,
					Unwrap(CAST(1 AS Int32)) as SourceIndex
				FROM
					UnionByRight e_1
			) e_2
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.Key_1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Key` as Key_1,
	t1.`Value` as Value_1,
	t1.Priority as Priority
FROM
	UnionByLeft t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Key` as Key_1,
	t1.`Value` as Value_1,
	t1.Priority as Priority
FROM
	UnionByRight t1

