BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, NULL AS Value) arg ON entity.PersonID = arg.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toDecimal128('2147483648.123', 10) AS Value) arg ON entity.PersonID = arg.Id

