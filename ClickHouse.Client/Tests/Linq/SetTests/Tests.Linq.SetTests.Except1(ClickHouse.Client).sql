BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
EXCEPT DISTINCT
SELECT
	p.ParentID,
	p.ChildID
FROM
	Child p
WHERE
	p.ParentID = toInt32(3)

