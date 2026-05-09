-- DuckDB

SELECT
	p1.Value1,
	CAST(NULL AS INTEGER)
FROM
	Parent p1
UNION
SELECT
	p2.Value1,
	p2.ParentID
FROM
	Parent p2

