-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC,
	t1.ParentID + 1

