-- DuckDB
SELECT
	x_1.ParentID
FROM
	(
		SELECT
			x.ParentID,
			c_1.ParentID as ParentID_1
		FROM
			Parent x
				LEFT JOIN Child c_1 ON c_1.ParentID = x.ParentID
		UNION ALL
		SELECT
			p.ParentID,
			CAST(NULL AS INTEGER) as ParentID_1
		FROM
			Parent p
	) x_1
WHERE
	x_1.ParentID_1 IS NULL

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

