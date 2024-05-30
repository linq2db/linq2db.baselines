BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT
		x.LastName as Obj_Operator
	FROM
		Person x
)
SELECT
	t1.Obj_Operator
FROM
	CTE_1 t1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	person_1.LastName
FROM
	Person person_1
LIMIT 1

