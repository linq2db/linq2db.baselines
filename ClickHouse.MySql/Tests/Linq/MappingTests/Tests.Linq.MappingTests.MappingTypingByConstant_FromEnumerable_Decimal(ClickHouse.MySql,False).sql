-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES('Id Nullable(Int32), Value Nullable(Decimal128(10))', (1, toDecimal128('1', 10))) arg ON entity.PersonID = arg.Id

-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN VALUES('Id Nullable(Int32), Value Nullable(Decimal128(10))', (1, toDecimal128('2147483648.123', 10))) arg ON entity.PersonID = arg.Id

