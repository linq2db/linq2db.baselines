-- YDB Ydb
DECLARE $n Int32
SET     $n = 1

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1
LIMIT $n

