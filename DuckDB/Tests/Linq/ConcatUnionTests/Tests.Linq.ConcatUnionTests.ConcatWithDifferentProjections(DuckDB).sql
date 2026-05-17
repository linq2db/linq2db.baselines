-- DuckDB

SELECT
	p1.ParentID,
	p1.ParentID,
	p1.Value1
FROM
	Parent p1
UNION ALL
SELECT
	Coalesce(p2.Value1, 0),
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER)
FROM
	Parent p2

-- DuckDB

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

