-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES(
			'Id Nullable(Int32), Value Nullable(Float64)',
			(1, toFloat64(0))
		) arg ON entity.PersonID = arg.Id

-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES(
			'Id Nullable(Int32), Value Nullable(Float64)',
			(1, toFloat64(3147483648))
		) arg ON entity.PersonID = arg.Id

