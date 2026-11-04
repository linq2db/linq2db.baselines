-- YDB Ydb
SELECT
	t1.RowNumber_2 as RowNumber,
	t1.RowNumber_1 as RowNumber_1,
	t1.Tag as Tag
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.Id, r.Id) as RowNumber,
			e.Country as RowNumber_1,
			e.Id as RowNumber_2,
			r.Id as RowNumber_3,
			r.Tag as Tag
		FROM
			NullableKeyData e
				INNER JOIN RelatedData r ON e.Id = r.OwnerId
		WHERE
			e.CustomerId LIKE 'DST%'u ESCAPE '~'s
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_2,
	t1.RowNumber_3

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Country as Country,
	t1.Region as Region
FROM
	NullableKeyData t1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.OwnerId as OwnerId,
	t1.Tag as Tag
FROM
	RelatedData t1

