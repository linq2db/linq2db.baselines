-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1
ORDER BY
	t1.ParentID DESC,
	t1.ChildID,
	t1.ParentID + 1 DESC

