-- DuckDB

SELECT
	p.ParentID,
	p.Value1,
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER)
FROM
	Parent p
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	a_Parent.ParentID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child ch
		LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
WHERE
	ch.ParentID = 2

