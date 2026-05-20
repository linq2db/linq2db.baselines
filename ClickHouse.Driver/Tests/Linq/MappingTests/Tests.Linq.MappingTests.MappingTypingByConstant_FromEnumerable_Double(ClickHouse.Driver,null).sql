-- ClickHouse.Driver ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES('Id Nullable(Int32), Value Nullable(Float64)', (1, NULL)) arg ON entity.PersonID = arg.Id

-- ClickHouse.Driver ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES('Id Nullable(Int32), Value Nullable(Float64)', (1, toFloat64(3147483648))) arg ON entity.PersonID = arg.Id

