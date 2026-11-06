-- YDB Ydb
SELECT
	t1.RowNumber_1 as RowNumber,
	t1.RowNumber_2 as RowNumber_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1.RowNumber ORDER BY e_1.RowNumber_1) as RowNumber,
			e_1.RowNumber as RowNumber_1,
			e_1.RowNumber_1 as RowNumber_2
		FROM
			(
				SELECT DISTINCT
					e.Country as RowNumber,
					e.Region as RowNumber_1
				FROM
					NullableKeyData e
				WHERE
					e.CustomerId LIKE 'DST%'u ESCAPE '~'s
			) e_1
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_2

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	NullableKeyData t1

