-- ClickHouse.Driver ClickHouse
SELECT
	t1.RowNumber_2,
	t1.RowNumber_1,
	t1.Tag
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.Id, r.Id)) as RowNumber,
			e.Country as RowNumber_1,
			e.Id as RowNumber_2,
			r.Id as RowNumber_3,
			r.Tag as Tag
		FROM
			NullableKeyData e
				INNER JOIN RelatedData r ON e.Id = r.OwnerId
		WHERE
			startsWith(e.CustomerId, 'DST')
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.RowNumber_2,
	t1.RowNumber_3

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.OwnerId,
	t1.Tag
FROM
	RelatedData t1

