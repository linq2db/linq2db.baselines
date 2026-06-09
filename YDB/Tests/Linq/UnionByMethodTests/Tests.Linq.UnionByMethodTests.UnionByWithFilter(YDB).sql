-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Key_1 as Key_1,
	t1.Value_1 as Value_1,
	t1.Priority as Priority
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1.Key_1 ORDER BY e_1.SourceIndex, e_1.Key_1) as RowNumber,
			e_1.Id as Id,
			e_1.Key_1 as Key_1,
			e_1.Value_1 as Value_1,
			e_1.Priority as Priority
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
					x.Id as Id,
					x.`Key` as Key_1,
					x.`Value` as Value_1,
					x.Priority as Priority,
					Unwrap(CAST(1 AS Int32)) as SourceIndex
				FROM
					UnionByRight x
				WHERE
					x.`Key` >= 30
			) e_1
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

