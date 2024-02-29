BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	ch.ChildID
FROM
	Parent p
		INNER JOIN Child ch ON p.ParentID = ch.ParentID
WHERE
	(ch.ParentID < toInt32(4) OR ch.ParentID >= toInt32(4))

