BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	q1.GrandChildID
FROM
	Parent p
		INNER JOIN GrandChild q1 ON p.ParentID = q1.ParentID

