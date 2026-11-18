-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.CustomerId) as RowNumber,
			e.CustomerId as CustomerId,
			e.Id as Id,
			e.Country as Country,
			e.Region as Region
		FROM
			NullableKeyData e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.CustomerId

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	NullableKeyData t1

