-- Informix.DB2 Informix

WITH CTE_1 (Obj_Operator)
AS
(
	SELECT
		x.LastName
	FROM
		Person x
)
SELECT FIRST 1
	t1.Obj_Operator
FROM
	CTE_1 t1

-- Informix.DB2 Informix

SELECT FIRST 1
	person_1.LastName
FROM
	Person person_1

