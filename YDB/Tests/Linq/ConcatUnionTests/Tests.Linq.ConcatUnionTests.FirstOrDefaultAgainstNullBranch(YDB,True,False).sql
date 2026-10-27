-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	t2.ParentID as ParentID_1,
	t2.ParentID as ParentID_2,
	t2.ChildID as ChildID
FROM
	Parent p
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
		) t2 ON t2.ParentID = p.ParentID
UNION
SELECT
	p_1.ParentID as ParentID,
	CAST(NULL AS Int32) as ParentID_1,
	CAST(NULL AS Int32) as ParentID_2,
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

