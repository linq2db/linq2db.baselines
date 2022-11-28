BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	toInt32(2) = ch.ParentID AND toInt32(21) = ch.ChildID

