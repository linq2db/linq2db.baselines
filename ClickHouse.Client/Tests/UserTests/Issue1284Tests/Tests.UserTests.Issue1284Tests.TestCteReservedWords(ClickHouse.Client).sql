BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE_1 AS
(
	SELECT
		x.LastName as Operator
	FROM
		Person x
)
SELECT
	t1.Operator
FROM
	CTE_1 t1
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.LastName
FROM
	Person x
LIMIT toInt32(1)

