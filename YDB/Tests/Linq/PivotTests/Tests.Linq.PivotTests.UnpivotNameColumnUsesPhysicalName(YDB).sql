-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.Value_1 as Value_1
FROM
	(
		SELECT
			Unwrap(CAST('Q_ONE'u AS Text)) as Name,
			row_1.Id as Id,
			row_1.Q_ONE as Value_1
		FROM
			AliasedQuarterly row_1
		WHERE
			row_1.Q_ONE IS NOT NULL
		UNION ALL
		SELECT
			Unwrap(CAST('Q_TWO'u AS Text)) as Name,
			row_2.Id as Id,
			row_2.Q_TWO as Value_1
		FROM
			AliasedQuarterly row_2
		WHERE
			row_2.Q_TWO IS NOT NULL
	) t1
ORDER BY
	t1.Name

