-- YDB Ydb
DECLARE $id Int32
SET     $id = -1

SELECT
	p.ParentID as ParentID,
	t2.GrandChildID as GrandChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				g_1.GrandChildID as GrandChildID,
				g_1.ParentID as ParentID
			FROM
				Child t1
					RIGHT JOIN GrandChild g_1 ON g_1.ChildID = t1.ChildID
			WHERE
				t1.ChildID = $id
		) t2 ON p.ParentID = t2.ParentID

