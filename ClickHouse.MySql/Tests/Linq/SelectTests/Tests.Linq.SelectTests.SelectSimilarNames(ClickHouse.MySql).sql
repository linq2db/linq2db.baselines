-- ClickHouse.MySql ClickHouse

SELECT
	parent_1.ParentID,
	parent_1.ChildID
FROM
	Parent t1
		INNER JOIN Child parent_1 ON parent_1.ParentID = t1.ParentID
WHERE
	t1.Value1 = 1

