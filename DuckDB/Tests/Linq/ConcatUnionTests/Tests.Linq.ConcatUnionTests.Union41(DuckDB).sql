-- DuckDB

SELECT
	p.ParentID,
	CAST(True AS BOOLEAN)
FROM
	Parent p
UNION
SELECT
	ch.ParentID,
	CAST(False AS BOOLEAN)
FROM
	Child ch

