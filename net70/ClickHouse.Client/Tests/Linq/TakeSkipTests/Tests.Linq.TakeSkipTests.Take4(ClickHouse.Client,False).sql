BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	ch.ChildID >= toInt32(0) AND ch.ChildID <= toInt32(100)
LIMIT toInt32(3)

