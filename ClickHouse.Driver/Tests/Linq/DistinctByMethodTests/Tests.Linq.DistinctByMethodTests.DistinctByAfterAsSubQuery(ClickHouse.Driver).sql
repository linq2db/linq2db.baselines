-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.Id)) as RowNumber,
			e.Id as Id,
			e.CustomerId as CustomerId,
			e.Country as Country,
			e.Region as Region
		FROM
			(
				SELECT
					c_1.Id as Id,
					c_1.Country as Country,
					c_1.CustomerId as CustomerId,
					c_1.Region as Region
				FROM
					NullableKeyData c_1
				WHERE
					startsWith(c_1.CustomerId, 'DST')
			) e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Id

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

