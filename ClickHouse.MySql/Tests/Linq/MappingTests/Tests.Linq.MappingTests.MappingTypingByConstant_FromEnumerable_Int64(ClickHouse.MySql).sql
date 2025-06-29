BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toInt64(1) AS Value) arg ON entity.PersonID = arg.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toInt64(2147483648) AS Value) arg ON entity.PersonID = arg.Id

