-- YDB Ydb
SELECT
	c_1.Id as Id,
	c_1.CustomerId as CustomerId,
	c_1.Country as Country,
	c_1.Region as Region
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.Id) as RowNumber,
			e.Id as Id,
			e.CustomerId as CustomerId,
			e.Country as Country,
			e.Region as Region
		FROM
			NullableKeyData e
		WHERE
			e.CustomerId LIKE 'DST%'u ESCAPE '~'s
	) c_1
WHERE
	c_1.RowNumber = 1l AND c_1.Id > 1
ORDER BY
	c_1.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	NullableKeyData t1

