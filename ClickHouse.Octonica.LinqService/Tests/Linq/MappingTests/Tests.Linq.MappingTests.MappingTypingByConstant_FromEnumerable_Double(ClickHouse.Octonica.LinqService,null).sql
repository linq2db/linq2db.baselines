BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, NULL AS Value) arg ON entity.PersonID = arg.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toFloat64(3147483648) AS Value) arg ON entity.PersonID = arg.Id

