BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.ParentID,
	t.ChildID
FROM
	Child t
UNION DISTINCT
SELECT
	t_1.ParentID as ParentID,
	t_1.ChildID as ChildID
FROM
	Child t_1
WHERE
	t_1.ChildID < 10

