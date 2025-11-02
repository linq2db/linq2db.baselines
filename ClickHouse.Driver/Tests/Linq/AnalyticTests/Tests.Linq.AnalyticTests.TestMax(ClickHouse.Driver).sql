-- ClickHouse.Driver ClickHouse

SELECT
	max(c_1.ChildID),
	MAX(c_1.ChildID),
	MAX(ALL c_1.ChildID),
	MAX(DISTINCT c_1.ChildID)
FROM
	Parent g_1
		INNER JOIN Child c_1 ON g_1.ParentID = c_1.ParentID
GROUP BY
	g_1.ParentID

-- ClickHouse.Driver ClickHouse

SELECT
	maxOrNull(t1.ParentID)
FROM
	Child t1

-- ClickHouse.Driver ClickHouse

SELECT
	MAX(ALL t1.ParentID)
FROM
	Child t1

-- ClickHouse.Driver ClickHouse

SELECT
	MAX(DISTINCT t1.ParentID)
FROM
	Child t1

