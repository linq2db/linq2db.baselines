-- DuckDB
SELECT
	p.ParentID,
	t1.ParentID,
	t1.ParentID,
	t1.ChildID
FROM
	Parent p
		LEFT JOIN LATERAL (
			SELECT
				c_1.ParentID,
				c_1.ChildID
			FROM
				Child c_1
			WHERE
				c_1.ParentID = p.ParentID
			ORDER BY
				c_1.ChildID
			LIMIT 1
		) t1 ON 1=1
EXCEPT
SELECT
	p_1.ParentID,
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER)
FROM
	Parent p_1

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- DuckDB
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

