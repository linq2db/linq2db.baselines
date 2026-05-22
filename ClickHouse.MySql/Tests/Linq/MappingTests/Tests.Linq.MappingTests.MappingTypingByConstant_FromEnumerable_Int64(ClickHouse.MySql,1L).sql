-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES(
			'Id Nullable(Int32), Value Nullable(Int64)',
			(1, toInt64(1))
		) arg ON entity.PersonID = arg.Id

-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES(
			'Id Nullable(Int32), Value Nullable(Int64)',
			(1, toInt64(2147483648))
		) arg ON entity.PersonID = arg.Id

