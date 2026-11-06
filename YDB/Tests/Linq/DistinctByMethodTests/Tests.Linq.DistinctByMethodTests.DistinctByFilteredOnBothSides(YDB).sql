-- YDB Ydb
SELECT
	c_1.RowNumber_2 as RowNumber,
	c_1.CustomerId as CustomerId,
	c_1.RowNumber_1 as RowNumber_1,
	c_1.Region as Region
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
			e.CustomerId LIKE 'DST%'u ESCAPE '~'s
	) c_1
WHERE
	c_1.RowNumber = 1l AND c_1.RowNumber_2 > 1
ORDER BY
	c_1.RowNumber_2

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	NullableKeyData t1

