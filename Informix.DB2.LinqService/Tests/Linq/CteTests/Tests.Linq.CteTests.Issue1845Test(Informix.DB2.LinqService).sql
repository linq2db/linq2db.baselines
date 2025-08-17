BeforeExecute
-- Informix.DB2 Informix (asynchronously)

WITH CTE_1 (Value1, Value2)
AS
(
	SELECT
		o.FirstName,
		o.LastName
	FROM
		Person o
),
CTE_2 (Value1, Value2)
AS
(
	SELECT
		NVL(t1.Value1, NULL),
		NVL(t1.Value2, NULL)
	FROM
		CTE_1 t1
	UNION
	SELECT
		t2.Value1,
		t2.Value2
	FROM
		(
			SELECT 'Somebody'::NVarChar(255) AS Value1, 'Unimportant'::NVarChar(255) AS Value2 FROM table(set{1})) t2
)
SELECT
	t3.Value1,
	t3.Value2
FROM
	CTE_2 t3

