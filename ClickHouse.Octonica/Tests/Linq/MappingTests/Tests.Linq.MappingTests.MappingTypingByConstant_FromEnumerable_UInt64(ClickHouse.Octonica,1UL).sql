-- ClickHouse.Octonica ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toUInt64(1) AS Value) arg ON entity.PersonID = arg.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toUInt64(2147483648) AS Value) arg ON entity.PersonID = arg.Id

