-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ParentID_1 as ParentID_1,
	t1.ParentID_1 as ParentID_2,
	t1.ChildID as ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID,
			p.ParentID as ParentID_1,
			p.ParentID + 100 as ChildID
		FROM
			Parent p
		UNION
		SELECT
			p_1.ParentID as ParentID,
			CAST(NULL AS Int32) as ParentID_1,
			CAST(NULL AS Int32) as ChildID
		FROM
			Parent p_1
	) t1
UNION
SELECT
	p_2.ParentID as ParentID,
	CAST(NULL AS Int32) as ParentID_1,
	CAST(NULL AS Int32) as ParentID_2,
	CAST(NULL AS Int32) as ChildID
FROM
	Parent p_2

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

