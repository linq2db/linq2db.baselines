-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	CAST(NULL AS Int32) as c1,
	CAST(NULL AS Int32) as ParentID_1,
	CAST(NULL AS Int32) as ChildID
FROM
	Parent p
UNION
SELECT
	t1.ParentID as ParentID,
	t1.ParentID_1 as c1,
	t1.ParentID_1 as ParentID_1,
	t1.ChildID as ChildID
FROM
	(
		SELECT
			p_1.ParentID as ParentID,
			p_1.ParentID as ParentID_1,
			p_1.ParentID + 100 as ChildID
		FROM
			Parent p_1
		UNION ALL
		SELECT
			p_2.ParentID as ParentID,
			CAST(NULL AS Int32) as ParentID_1,
			CAST(NULL AS Int32) as ChildID
		FROM
			Parent p_2
	) t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

