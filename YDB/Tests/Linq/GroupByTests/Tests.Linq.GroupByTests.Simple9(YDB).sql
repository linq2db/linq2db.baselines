-- YDB Ydb

SELECT
	t2.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID,
			t1.ChildID as ChildID
		FROM
			GrandChild t1
	) t2

