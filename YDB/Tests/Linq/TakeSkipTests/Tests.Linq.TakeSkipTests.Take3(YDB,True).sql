-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
WHERE
	ch.ChildID > 3 OR ch.ChildID < 4
LIMIT $take

