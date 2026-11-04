-- ClickHouse.MySql ClickHouse
SELECT
	t1.RowNumber_3,
	t1.CustomerId,
	t1.RowNumber_1,
	t1.RowNumber_2
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Country, e.Region ORDER BY e.Id)) as RowNumber,
			e.Country as RowNumber_1,
			e.Region as RowNumber_2,
			e.Id as RowNumber_3,
			e.CustomerId as CustomerId
		FROM
			NullableKeyData e
		WHERE
			startsWith(e.CustomerId, 'DST')
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.RowNumber_3

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

