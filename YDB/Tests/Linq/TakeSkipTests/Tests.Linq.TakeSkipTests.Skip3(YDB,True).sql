-- YDB Ydb

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
WHERE
	ch.ChildID >= 0 AND ch.ChildID <= 100
ORDER BY
	ch.ParentID,
	ch.ChildID

