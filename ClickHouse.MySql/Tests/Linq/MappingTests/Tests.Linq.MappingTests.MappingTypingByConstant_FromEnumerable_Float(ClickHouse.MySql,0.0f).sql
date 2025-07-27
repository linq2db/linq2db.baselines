BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toFloat32(0) AS Value) arg ON entity.PersonID = arg.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	arg.Id,
	arg.Value
FROM
	Person entity
		INNER JOIN (
			SELECT 1 AS Id, toFloat32(3.14748365E+09) AS Value) arg ON entity.PersonID = arg.Id

