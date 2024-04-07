BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.ParentID,
	x.ChildID
FROM
	Child x
ORDER BY
	x.ChildID % toInt32(2) DESC,
	x.ChildID DESC

