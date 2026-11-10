-- YDB Ydb
SELECT
	x_1.ParentID as ParentID
FROM
	(
		SELECT
			x.ParentID as ParentID,
			CAST(NULL AS Int32) as Child
		FROM
			Parent x
		UNION ALL
		SELECT
			t1.ParentID as ParentID,
			c_1.ParentID as Child
		FROM
			Parent t1
				LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID
	) x_1
WHERE
	x_1.Child IS NULL

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

