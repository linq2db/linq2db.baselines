-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1
LIMIT $take

