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
	t1.Child,
	t1.Child,
	t1.ChildID
FROM
	(
		SELECT
			p_1.ParentID,
			CAST(NULL AS INTEGER) as Child,
			CAST(NULL AS INTEGER) as ChildID
		FROM
			Parent p_1
		UNION ALL
		SELECT
			p_2.ParentID,
			p_2.ParentID as Child,
			p_2.ParentID + 100 as ChildID
		FROM
			Parent p_2
	) t1

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

