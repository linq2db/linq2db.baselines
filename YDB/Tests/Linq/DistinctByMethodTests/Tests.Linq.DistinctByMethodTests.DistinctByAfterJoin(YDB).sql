-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Country as Country,
	t1.Tag as Tag
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.Id, r.Id) as RowNumber,
			e.Id as Id,
			r.Id as Id_1,
			e.Country as Country,
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
	t1.Id,
	t1.Id_1

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

