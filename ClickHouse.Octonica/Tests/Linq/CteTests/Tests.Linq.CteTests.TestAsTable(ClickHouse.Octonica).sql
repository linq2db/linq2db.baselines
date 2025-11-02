-- ClickHouse.Octonica ClickHouse

WITH CTE1_ AS
(
	SELECT
		t1.ParentID,
		t1.ChildID
	FROM
		Child t1
)
SELECT
	t2.ParentID,
	t2.ChildID
FROM
	CTE1_ t2

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

