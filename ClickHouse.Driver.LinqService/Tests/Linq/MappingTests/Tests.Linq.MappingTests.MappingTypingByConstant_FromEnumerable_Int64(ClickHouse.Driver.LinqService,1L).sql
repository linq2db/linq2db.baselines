BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toInt64(1) AS Value) arg ON entity.PersonID = arg.Id

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toInt64(2147483648) AS Value) arg ON entity.PersonID = arg.Id

