-- YDB Ydb
SELECT
	t3.ParentID as ParentID,
	t3.ChildID as ChildID,
	t3.GrandChildID as GrandChildID
FROM
	Parent p
		CROSS JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID,
				t1.GrandChildID as GrandChildID
			FROM
				Child t2
					CROSS JOIN GrandChild t1
		) t3

