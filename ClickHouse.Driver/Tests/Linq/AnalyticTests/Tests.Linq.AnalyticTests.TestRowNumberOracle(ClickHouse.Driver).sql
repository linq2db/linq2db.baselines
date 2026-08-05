-- ClickHouse.Driver ClickHouse
SELECT
	toInt64(ROW_NUMBER() OVER (PARTITION BY p.Value1, c_1.ChildID ORDER BY p.Value1)),
	toInt64(ROW_NUMBER() OVER (ORDER BY p.Value1, c_1.ChildID DESC))
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

