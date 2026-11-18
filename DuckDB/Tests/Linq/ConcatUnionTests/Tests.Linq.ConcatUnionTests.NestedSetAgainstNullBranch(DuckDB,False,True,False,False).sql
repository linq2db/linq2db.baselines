-- DuckDB
SELECT
	t1.ParentID,
	t1.ParentID_1,
	t1.ParentID_1,
	t1.ChildID
FROM
	(
		SELECT
			p.ParentID,
			p.ParentID as ParentID_1,
			p.ParentID + 100 as ChildID
		FROM
			Parent p
		UNION
		SELECT
			p_1.ParentID,
			CAST(NULL AS INTEGER) as ParentID_1,
			CAST(NULL AS INTEGER) as ChildID
		FROM
			Parent p_1
	) t1
UNION
SELECT
	p_2.ParentID,
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER)
FROM
	Parent p_2

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

