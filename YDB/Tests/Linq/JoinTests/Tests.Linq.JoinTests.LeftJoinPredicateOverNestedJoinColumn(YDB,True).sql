-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	t1.ChildID as ChildID,
	t1.GrandChildID as GrandChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				c_1.ChildID as ChildID,
				g_1.GrandChildID as GrandChildID,
				c_1.ParentID as ParentID
			FROM
				Child c_1
					INNER JOIN GrandChild g_1 ON g_1.ChildID = c_1.ChildID
			WHERE
				g_1.GrandChildID > 300
		) t1 ON p.ParentID = t1.ParentID

