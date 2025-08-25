BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

