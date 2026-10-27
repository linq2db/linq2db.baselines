-- YDB Ydb
SELECT
	x_1.ParentID as ParentID,
	CASE
		WHEN x_1.Child IS NULL THEN -1
		WHEN x_1.projection__set_id__ = 0 THEN NULL
		ELSE x_1.ChildID
	END as Id
FROM
	(
		SELECT
			x.ParentID as ParentID,
			CAST(NULL AS Int32) as Child,
			CAST(NULL AS Int32) as ChildID,
			Unwrap(CAST(0 AS Int32)) as projection__set_id__
		FROM
			Parent x
		UNION ALL
		SELECT
			t1.ParentID as ParentID,
			c_1.ParentID as Child,
			c_1.ChildID as ChildID,
			Unwrap(CAST(1 AS Int32)) as projection__set_id__
		FROM
			Parent t1
				LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID
	) x_1

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

