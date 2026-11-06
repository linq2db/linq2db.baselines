-- DuckDB
SELECT DISTINCT ON (g_1.ParentID % 2)
	g_1.ParentID % 2,
	g_1.Value1
FROM
	Parent g_1
ORDER BY
	g_1.ParentID % 2,
	g_1.Value1 NULLS FIRST

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

