-- ClickHouse.Driver ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, NULL AS Value) arg ON entity.PersonID = arg.Id

-- ClickHouse.Driver ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toInt64(2147483648) AS Value) arg ON entity.PersonID = arg.Id

