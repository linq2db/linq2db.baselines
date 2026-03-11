-- ClickHouse.Driver ClickHouse

SELECT
	x.ParentID
FROM
	Parent x
		INNER JOIN Child y ON x.ParentID = y.ParentID

-- ClickHouse.Driver ClickHouse

SELECT DISTINCT
	g_1.ParentID
FROM
	Parent g_1
		INNER JOIN Child y ON g_1.ParentID = y.ParentID

