-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e_1.Region ORDER BY e_1.CustomerId)) as RowNumber,
			e_1.CustomerId as CustomerId,
			e_1.Id as Id,
			e_1.Country as Country,
			e_1.Region as Region
		FROM
			(
				SELECT
					toInt64(ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.Id)) as RowNumber,
					e.Id as Id,
					e.CustomerId as CustomerId,
					e.Region as Region,
					e.Country as Country
				FROM
					NullableKeyData e
				WHERE
					startsWith(e.CustomerId, 'DST')
			) e_1
		WHERE
			e_1.RowNumber = toInt64(1) AND e_1.Id < 100
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.CustomerId,
	t1.Id

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

