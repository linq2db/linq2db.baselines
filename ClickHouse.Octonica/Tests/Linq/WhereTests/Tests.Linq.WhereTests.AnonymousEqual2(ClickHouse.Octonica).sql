-- ClickHouse.Octonica ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	NOT (ch.ParentID = 2 AND ch.ChildID = 21) AND ch.ParentID > 0

