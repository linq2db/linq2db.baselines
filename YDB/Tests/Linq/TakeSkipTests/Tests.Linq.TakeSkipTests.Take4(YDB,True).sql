-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
WHERE
	ch.ChildID >= 0 AND ch.ChildID <= 100
LIMIT $take

