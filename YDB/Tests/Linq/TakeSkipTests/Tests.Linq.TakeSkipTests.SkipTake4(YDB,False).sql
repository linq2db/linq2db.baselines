-- YDB Ydb

SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID
FROM
	(
		SELECT
			t1.ChildID as ChildID,
			t1.ParentID as ParentID
		FROM
			Child t1
		ORDER BY
			t1.ChildID DESC
		LIMIT 7 OFFSET 1 
	) t2
ORDER BY
	t2.ChildID

