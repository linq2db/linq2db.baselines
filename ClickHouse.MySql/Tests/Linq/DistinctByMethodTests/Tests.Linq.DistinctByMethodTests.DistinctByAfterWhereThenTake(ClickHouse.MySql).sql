-- ClickHouse.MySql ClickHouse
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
			NullableKeyData e
		WHERE
			startsWith(e.CustomerId, 'DST')
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Id
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

