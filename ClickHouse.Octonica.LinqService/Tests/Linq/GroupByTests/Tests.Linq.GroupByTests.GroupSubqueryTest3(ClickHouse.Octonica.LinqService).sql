BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	pmp.ParentID
FROM
	Child pmp
GROUP BY
	pmp.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

