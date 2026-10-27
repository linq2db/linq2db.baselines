-- YDB Ydb
SELECT
	x_1.ParentID as ParentID,
	CASE
		WHEN x_1.ParentID_1 IS NULL THEN -1
		WHEN x_1.projection__set_id__ = 0 THEN x_1.ChildID
		ELSE NULL
	END as Id
FROM
	(
		SELECT
			x.ParentID as ParentID,
			c_1.ParentID as ParentID_1,
			c_1.ChildID as ChildID,
			Unwrap(CAST(0 AS Int32)) as projection__set_id__
		FROM
			Parent x
				LEFT JOIN Child c_1 ON c_1.ParentID = x.ParentID
		UNION ALL
		SELECT
			p.ParentID as ParentID,
			CAST(NULL AS Int32) as ParentID_1,
			CAST(NULL AS Int32) as ChildID,
			Unwrap(CAST(1 AS Int32)) as projection__set_id__
		FROM
			Parent p
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

