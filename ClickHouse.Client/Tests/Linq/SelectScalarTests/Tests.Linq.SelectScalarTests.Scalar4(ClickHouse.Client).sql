BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
WHERE
	c_1.ChildID > toInt32(20) AND p.ParentID = toInt32(3)
LIMIT toInt32(1)

