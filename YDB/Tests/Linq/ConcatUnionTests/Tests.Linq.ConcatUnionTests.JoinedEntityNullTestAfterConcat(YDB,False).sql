-- YDB Ydb
SELECT
	x_1.ParentID as ParentID
FROM
	(
		SELECT
			x.ParentID as ParentID,
			c_1.ParentID as ParentID_1
		FROM
			Parent x
				LEFT JOIN Child c_1 ON c_1.ParentID = x.ParentID
		UNION ALL
		SELECT
			p.ParentID as ParentID,
			CAST(NULL AS Int32) as ParentID_1
		FROM
			Parent p
	) x_1
WHERE
	x_1.ParentID_1 IS NULL

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

