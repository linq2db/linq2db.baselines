-- YDB Ydb

SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID,
	t2.GrandChildID as GrandChildID
FROM
	Parent p
		CROSS JOIN Child t1
		CROSS JOIN GrandChild t2

