-- YDB Ydb
DECLARE $take Int32
SET     $take = 5
DECLARE $skip Int32
SET     $skip = 2

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 5
DECLARE $skip Int32
SET     $skip = 2

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC
LIMIT $take OFFSET $skip 

