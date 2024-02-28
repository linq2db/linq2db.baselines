BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1,
	Parent p
WHERE
	p.ParentID = c_1.ParentID AND (p.Value1 NOT IN (toInt32(1), toInt32(2), toInt32(3)) OR p.Value1 IS NULL)

