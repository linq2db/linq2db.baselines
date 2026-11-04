-- YDB Ydb
SELECT
	t1.RowNumber_2 as RowNumber,
	t1.CustomerId as CustomerId,
	t1.RowNumber_1 as RowNumber_1,
	t1.Region as Region
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.Id) as RowNumber,
			e.Country as RowNumber_1,
			e.Id as RowNumber_2,
			e.CustomerId as CustomerId,
			e.Region as Region
		FROM
			NullableKeyData e
		WHERE
			e.CustomerId LIKE 'DST%'u ESCAPE '~'s AND e.Id > 1
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

