-- YDB Ydb

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
WHERE
	ch.ChildID > 3 OR ch.ChildID < 4
LIMIT 3

