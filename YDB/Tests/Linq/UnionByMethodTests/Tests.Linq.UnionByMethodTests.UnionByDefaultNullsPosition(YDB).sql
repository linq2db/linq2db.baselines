-- YDB Ydb

SELECT
	x.Id as Id
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_2.Key_1 ORDER BY e_2.SourceIndex, CASE
				WHEN e_2.Priority IS NULL THEN 1
				ELSE 0
			END, e_2.Priority) as RowNumber,
			e_2.Id as Id,
			e_2.Key_1 as Key_1
		FROM
			(
				SELECT
					e.Id as Id,
					e.`Key` as Key_1,
					e.Priority as Priority,
					Unwrap(CAST(0 AS Int32)) as SourceIndex
				FROM
					UnionByLeft e
				UNION ALL
				SELECT
					e_1.Id as Id,
					e_1.`Key` as Key_1,
					e_1.Priority as Priority,
					Unwrap(CAST(1 AS Int32)) as SourceIndex
				FROM
					UnionByRight e_1
			) e_2
	) x
WHERE
	x.RowNumber = 1l
ORDER BY
	x.Key_1

-- YDB Ydb

SELECT
	x.Id as Id
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_2.Key_1 ORDER BY e_2.SourceIndex, CASE
				WHEN e_2.Priority IS NULL THEN 1
				ELSE 0
			END, e_2.Priority) as RowNumber,
			e_2.Id as Id,
			e_2.Key_1 as Key_1
		FROM
			(
				SELECT
					e.Id as Id,
					e.`Key` as Key_1,
					e.Priority as Priority,
					Unwrap(CAST(0 AS Int32)) as SourceIndex
				FROM
					UnionByLeft e
				UNION ALL
				SELECT
					e_1.Id as Id,
					e_1.`Key` as Key_1,
					e_1.Priority as Priority,
					Unwrap(CAST(1 AS Int32)) as SourceIndex
				FROM
					UnionByRight e_1
			) e_2
	) x
WHERE
	x.RowNumber = 1l
ORDER BY
	x.Key_1

