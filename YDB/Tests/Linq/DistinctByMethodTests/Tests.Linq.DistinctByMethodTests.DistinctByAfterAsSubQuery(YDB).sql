-- YDB Ydb
SELECT
	t1.RowNumber_2 as RowNumber,
	t1.CustomerId as CustomerId,
	t1.RowNumber_1 as RowNumber_1,
	t1.Region as Region
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.RowNumber_1 ORDER BY e.RowNumber) as RowNumber,
			e.RowNumber_1 as RowNumber_1,
			e.RowNumber as RowNumber_2,
			e.CustomerId as CustomerId,
			e.Region as Region
		FROM
			(
				SELECT
					c_1.Id as RowNumber,
					c_1.Country as RowNumber_1,
					c_1.CustomerId as CustomerId,
					c_1.Region as Region
				FROM
					NullableKeyData c_1
				WHERE
					c_1.CustomerId LIKE 'DST%'u ESCAPE '~'s
			) e
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

