-- ClickHouse.Driver ClickHouse

SELECT
	p2.ParentID,
	p2.Value1
FROM
	Parent p1
		RIGHT JOIN Parent p2 ON p1.ParentID = p2.ParentID AND p1.Value1 = p2.Value1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

