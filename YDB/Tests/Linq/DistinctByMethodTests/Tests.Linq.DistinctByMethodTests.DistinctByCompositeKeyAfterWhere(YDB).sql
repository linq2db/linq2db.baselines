-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Country, e.Region ORDER BY e.Id) as RowNumber,
			e.Id as Id,
			e.CustomerId as CustomerId,
			e.Country as Country,
			e.Region as Region
		FROM
			NullableKeyData e
		WHERE
			e.CustomerId LIKE 'DST%'u ESCAPE '~'s
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	NullableKeyData t1

