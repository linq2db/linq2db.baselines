-- YDB Ydb
SELECT
	t1.RowNumber_3 as RowNumber,
	t1.CustomerId as CustomerId,
	t1.RowNumber_1 as RowNumber_1,
	t1.RowNumber_2 as RowNumber_2
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Country, e.Region ORDER BY e.Id) as RowNumber,
			e.Country as RowNumber_1,
			e.Region as RowNumber_2,
			e.Id as RowNumber_3,
			e.CustomerId as CustomerId
		FROM
			NullableKeyData e
		WHERE
			e.CustomerId LIKE 'DST%'u ESCAPE '~'s
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_3

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	NullableKeyData t1

