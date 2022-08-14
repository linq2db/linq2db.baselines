BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	ch.ChildID,
	gc.GrandChildID
FROM
	Parent p
		INNER JOIN Child ch ON p.ParentID = ch.ParentID
		INNER JOIN GrandChild gc ON ch.ChildID = gc.ChildID
WHERE
	ch.ChildID = toInt32(21) AND gc.GrandChildID = toInt32(211)

