-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Country, e.Region ORDER BY e.Id)) as RowNumber,
			e.Country as Country,
			e.Region as Region,
			e.Id as Id,
			e.CustomerId as CustomerId
		FROM
			NullableKeyData e
		WHERE
			startsWith(e.CustomerId, 'DST')
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

