-- YDB Ydb
SELECT
	c_1.ChildID as ChildID,
	t2.ParentID as ParentID,
	t2.Value1 as Value1
FROM
	Child c_1
		LEFT JOIN (
			SELECT
				a_LinkedParent.ChildID as ChildID,
				p.ParentID as ParentID,
				p.Value1 as Value1
			FROM
				(
					SELECT
						t1.ParentID as ParentID,
						t1.ChildID as ChildID
					FROM
						(
							SELECT
								g_1.ParentID as ParentID,
								ROW_NUMBER() OVER (PARTITION BY g_1.ChildID ORDER BY g_1.ChildID) as rn,
								g_1.ChildID as ChildID
							FROM
								GrandChild g_1
						) t1
					WHERE
						t1.rn = 1
				) a_LinkedParent
					INNER JOIN Parent p ON a_LinkedParent.ParentID = p.ParentID
		) t2 ON t2.ChildID = c_1.ChildID

