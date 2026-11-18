-- YDB Ydb
SELECT
	t2.ParentID as ParentID,
	t2.Child as Child,
	t2.ParentID_1 as ParentID_1,
	t2.ChildID as ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID,
			CAST(NULL AS Int32) as Child,
			CAST(NULL AS Int32) as ParentID_1,
			CAST(NULL AS Int32) as ChildID
		FROM
			Parent p
		UNION ALL
		SELECT
			t1.ParentID as ParentID,
			c_1.ParentID as Child,
			c_1.ParentID as ParentID_1,
			c_1.ChildID as ChildID
		FROM
			Parent t1
				LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID
	) t2
UNION
SELECT
	p_1.ParentID as ParentID,
	CAST(NULL AS Int32) as Child,
	CAST(NULL AS Int32) as ParentID_1,
	CAST(NULL AS Int32) as ChildID
FROM
	Parent p_1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

