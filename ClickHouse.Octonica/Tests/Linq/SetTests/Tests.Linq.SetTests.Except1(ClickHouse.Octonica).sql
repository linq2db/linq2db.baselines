BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
EXCEPT DISTINCT
SELECT
	p.ParentID as ParentID,
	p.ChildID as ChildID
FROM
	Child p
WHERE
	p.ParentID = 3

