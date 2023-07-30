BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	NOT (ch.ParentID = toInt32(2) AND ch.ChildID = toInt32(21))

