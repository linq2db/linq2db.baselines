-- ClickHouse.Driver ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES('Id Nullable(Int32), Value Nullable(Float32)', (1, NULL)) arg ON entity.PersonID = arg.Id

-- ClickHouse.Driver ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES('Id Nullable(Int32), Value Nullable(Float32)', (1, toFloat32(3.14748365E+09))) arg ON entity.PersonID = arg.Id

