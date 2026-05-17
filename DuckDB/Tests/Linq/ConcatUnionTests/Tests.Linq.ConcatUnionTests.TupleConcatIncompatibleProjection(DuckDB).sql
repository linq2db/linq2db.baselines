-- DuckDB

SELECT
	x.Value1,
	x.ParentID
FROM
	Parent x
WHERE
	x.ParentID > 3
UNION ALL
SELECT
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER)
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

-- DuckDB

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

