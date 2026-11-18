-- ClickHouse.Octonica ClickHouse
SELECT
	c_1.Id,
	c_1.CustomerId,
	c_1.Country,
	c_1.Region
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.Id)) as RowNumber,
			e.Id as Id,
			e.CustomerId as CustomerId,
			e.Country as Country,
			e.Region as Region
		FROM
			NullableKeyData e
		WHERE
			startsWith(e.CustomerId, 'DST')
	) c_1
WHERE
	c_1.RowNumber = toInt64(1) AND c_1.Id > 1
ORDER BY
	c_1.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

