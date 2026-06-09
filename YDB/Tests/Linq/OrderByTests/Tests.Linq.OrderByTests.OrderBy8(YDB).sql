-- YDB Ydb

SELECT
	x.ParentID as ParentID,
	x.ChildID as ChildID
FROM
	Child x
ORDER BY
	x.ChildID,
	x.ChildID % 2

