-- YDB Ydb
SELECT
	t1.Country as Country,
	t1.Region as Region
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1.Country ORDER BY e_1.Region) as RowNumber,
			e_1.Region as Region,
			e_1.Country as Country
		FROM
			(
				SELECT DISTINCT
					e.Country as Country,
					e.Region as Region
				FROM
					NullableKeyData e
				WHERE
					e.CustomerId LIKE 'DST%'u ESCAPE '~'s
			) e_1
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.Region

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	NullableKeyData t1

