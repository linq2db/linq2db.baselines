-- ClickHouse.Driver ClickHouse

SELECT
	minOrNull(c_1.ChildID),
	MIN(c_1.ChildID),
	MIN(ALL c_1.ChildID),
	MIN(DISTINCT c_1.ChildID)
FROM
	Parent g_1
		INNER JOIN Child c_1 ON g_1.ParentID = c_1.ParentID
GROUP BY
	g_1.ParentID

-- ClickHouse.Driver ClickHouse

SELECT
	minOrNull(t1.ParentID)
FROM
	Child t1

-- ClickHouse.Driver ClickHouse

SELECT
	MIN(ALL t1.ParentID)
FROM
	Child t1

-- ClickHouse.Driver ClickHouse

SELECT
	MIN(DISTINCT t1.ParentID)
FROM
	Child t1

