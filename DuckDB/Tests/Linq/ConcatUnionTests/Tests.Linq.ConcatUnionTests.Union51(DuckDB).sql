-- DuckDB

SELECT
	p1.ParentID,
	p1.Value1
FROM
	Parent p1
UNION
SELECT
	p2.ParentID,
	CAST(NULL AS INTEGER)
FROM
	Parent p2

