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
	t1.ParentID,
	t1.ParentID_1,
	t1.ParentID_1,
	t1.ChildID
FROM
	(
		SELECT
			p_1.ParentID,
			p_1.ParentID as ParentID_1,
			p_1.ParentID + 100 as ChildID
		FROM
			Parent p_1
		UNION
		SELECT
			p_2.ParentID,
			CAST(NULL AS INTEGER) as ParentID_1,
			CAST(NULL AS INTEGER) as ChildID
		FROM
			Parent p_2
	) t1

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

