BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.ChildID,
		t1.ParentID
	FROM
		Child t1
)
SELECT
	t.ParentID,
	t.ChildID
FROM
	CTE_1 t
WHERE
	t.ChildID = 1

