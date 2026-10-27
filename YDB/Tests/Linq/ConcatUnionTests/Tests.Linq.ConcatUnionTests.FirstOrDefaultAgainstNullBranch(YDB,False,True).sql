-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	CAST(NULL AS Int32) as c1,
	CAST(NULL AS Int32) as ParentID_1,
	CAST(NULL AS Int32) as ChildID
FROM
	Parent p
UNION ALL
SELECT
	p_1.ParentID as ParentID,
	t2.ParentID as c1,
	t2.ParentID as ParentID_1,
	t2.ChildID as ChildID
FROM
	Parent p_1
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						c_1.ParentID as ParentID,
						c_1.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ChildID) as rn
					FROM
						Child c_1
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.ParentID = p_1.ParentID

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

