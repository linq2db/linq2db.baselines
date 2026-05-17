-- DuckDB

SELECT
	p1.ParentID,
	CAST(NULL AS INTEGER)
FROM
	Parent p1
UNION
SELECT
	p2.ParentID,
	p2.Value1
FROM
	Parent p2

