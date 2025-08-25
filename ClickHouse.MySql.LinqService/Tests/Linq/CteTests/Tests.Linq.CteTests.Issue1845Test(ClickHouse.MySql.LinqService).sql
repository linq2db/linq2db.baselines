BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

WITH RECURSIVE CTE_1 AS
(
	SELECT
		o.FirstName as Value1,
		o.LastName as Value2
	FROM
		Person o
),
CTE_2 AS
(
	SELECT
		t1.Value1,
		t1.Value2
	FROM
		CTE_1 t1
	UNION DISTINCT
	SELECT
		t2.Value1 as Value1,
		t2.Value2 as Value2
	FROM
		(
			SELECT 'Somebody' AS Value1, 'Unimportant' AS Value2) t2
)
SELECT
	t3.Value1,
	t3.Value2
FROM
	CTE_2 t3

