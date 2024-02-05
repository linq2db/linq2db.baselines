BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
ORDER BY
	ch.ChildID % toInt32(2) DESC

