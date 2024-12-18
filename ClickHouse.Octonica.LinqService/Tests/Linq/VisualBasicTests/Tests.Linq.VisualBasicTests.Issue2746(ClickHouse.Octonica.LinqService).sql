BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	w.ParentID,
	w.ChildID,
	w.GrandChildID
FROM
	GrandChild w
WHERE
	w.ChildID IS NOT NULL AND w.ChildID = 1 AND w.ChildID IS NOT NULL

