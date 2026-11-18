-- DuckDB
SELECT
	t2.ParentID,
	t2.Child,
	t2.ParentID_1,
	t2.ChildID
FROM
	(
		SELECT
			p.ParentID,
			CAST(NULL AS INTEGER) as Child,
			CAST(NULL AS INTEGER) as ParentID_1,
			CAST(NULL AS INTEGER) as ChildID
		FROM
			Parent p
		UNION
		SELECT
			t1.ParentID,
			c_1.ParentID as Child,
			c_1.ParentID as ParentID_1,
			c_1.ChildID
		FROM
			Parent t1
				LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID
	) t2
INTERSECT
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

