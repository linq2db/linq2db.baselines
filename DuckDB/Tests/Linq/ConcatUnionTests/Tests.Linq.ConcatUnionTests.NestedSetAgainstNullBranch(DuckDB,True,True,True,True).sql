-- DuckDB
SELECT
	p.ParentID,
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER)
FROM
	Parent p
UNION
SELECT
	p_1.ParentID,
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER)
FROM
	Parent p_1
UNION
SELECT
	t1.ParentID,
	c_1.ParentID,
	c_1.ParentID,
	c_1.ChildID
FROM
	Parent t1
		LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID

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

