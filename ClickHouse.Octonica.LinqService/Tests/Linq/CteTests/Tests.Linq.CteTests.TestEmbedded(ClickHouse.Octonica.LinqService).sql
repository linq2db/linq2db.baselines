BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

WITH RECURSIVE CTE_1 AS
(
	SELECT
		c_1.ChildID
	FROM
		Child c_1
),
CTE_2 AS
(
	SELECT DISTINCT
		t1.ChildID as NotIn
	FROM
		CTE_1 t1
),
CTE_3 AS
(
	SELECT DISTINCT
		t2.NotIn
	FROM
		CTE_2 t2
),
CTE_4 AS
(
	SELECT DISTINCT
		t3.NotIn
	FROM
		CTE_3 t3
)
SELECT
	w.ParentID,
	w.ChildID
FROM
	Child w
WHERE
	w.ChildID NOT IN (
		SELECT
			t4.NotIn
		FROM
			CTE_4 t4
	)

