-- ClickHouse.Driver ClickHouse
SELECT
	t1.RowNumber_2,
	t1.CustomerId,
	t1.RowNumber_1,
	t1.Region
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.RowNumber_1 ORDER BY e.RowNumber)) as RowNumber,
			e.RowNumber_1 as RowNumber_1,
			e.RowNumber as RowNumber_2,
			e.CustomerId as CustomerId,
			e.Region as Region
		FROM
			(
				SELECT
					c_1.Id as RowNumber,
					c_1.Country as RowNumber_1,
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
	t1.RowNumber_2

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

