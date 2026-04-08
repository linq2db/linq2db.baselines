-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.ChildID as ChildID,
		t1.ParentID as ParentID
	FROM
		Child t1
)
SELECT
	t.ParentID,
	t.ChildID
FROM
	(
		SELECT
			t2.ChildID as ChildID,
			t2.ParentID as ParentID
		FROM
			CTE_1 t2
	) t
WHERE
	t.ChildID = 1

