BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	NOT (ch.ParentID = 2 AND ch.ChildID = 21)

