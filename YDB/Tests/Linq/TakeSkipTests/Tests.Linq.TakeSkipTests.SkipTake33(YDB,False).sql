-- YDB Ydb
DECLARE $take Int32
SET     $take = 5
DECLARE $skip Int32
SET     $skip = 3

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 5
DECLARE $skip Int32
SET     $skip = 3

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID
LIMIT $take OFFSET $skip 

