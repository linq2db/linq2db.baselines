-- YDB Ydb
SELECT
	c_1.ChildID as ChildID,
	t2.ParentID as ParentID
FROM
	Child c_1
		LEFT JOIN (
			SELECT
				x.ChildID as ChildID,
				p.ParentID as ParentID
			FROM
				(
					SELECT
						t1.ParentID as ParentID,
						t1.ChildID as ChildID
					FROM
						(
							SELECT
								g_1.ParentID as ParentID,
								ROW_NUMBER() OVER (PARTITION BY g_1.ChildID ORDER BY g_1.GrandChildID) as rn,
								g_1.ChildID as ChildID
							FROM
								GrandChild g_1
						) t1
					WHERE
						t1.rn = 1
				) x
					INNER JOIN Parent p ON x.ParentID = p.ParentID
		) t2 ON t2.ChildID = c_1.ChildID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	t1.GrandChildID as GrandChildID
FROM
	GrandChild t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

