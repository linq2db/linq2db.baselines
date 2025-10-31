-- ClickHouse.Driver ClickHouse

SELECT
	SUM(p.Value1) OVER(PARTITION BY p.Value1, c_1.ChildID),
	SUM(ALL p.Value1) OVER(ORDER BY p.Value1),
	SUM(DISTINCT p.Value1) OVER(),
	SUM(p.Value1) OVER(PARTITION BY c_1.ChildID ORDER BY p.Value1 RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

-- ClickHouse.Driver ClickHouse

SELECT
	SUM(p.Value1)
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

