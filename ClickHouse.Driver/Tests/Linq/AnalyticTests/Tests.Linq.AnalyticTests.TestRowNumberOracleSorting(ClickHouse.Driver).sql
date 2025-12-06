-- ClickHouse.Driver ClickHouse

SELECT
	ROW_NUMBER() OVER(ORDER BY p.Value1, c_1.ChildID DESC, p.ParentID)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

