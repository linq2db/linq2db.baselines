-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Child as Child,
	t1.Child as Child_1,
	t1.ChildID as ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID,
			CAST(NULL AS Int32) as Child,
			CAST(NULL AS Int32) as ChildID
		FROM
			Parent p
		UNION
		SELECT
			p_1.ParentID as ParentID,
			p_1.ParentID as Child,
			p_1.ParentID + 100 as ChildID
		FROM
			Parent p_1
	) t1
UNION
SELECT
	p_2.ParentID as ParentID,
	CAST(NULL AS Int32) as Child,
	CAST(NULL AS Int32) as Child_1,
	CAST(NULL AS Int32) as ChildID
FROM
	Parent p_2

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

