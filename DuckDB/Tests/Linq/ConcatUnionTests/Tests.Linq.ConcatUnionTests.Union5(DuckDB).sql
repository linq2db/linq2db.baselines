-- DuckDB

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
UNION
SELECT
	p2.ParentID,
	CAST(NULL AS INTEGER)
FROM
	Parent p2

