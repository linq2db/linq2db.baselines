-- YDB Ydb
DECLARE $take Int32
SET     $take = 2

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
LIMIT $take

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
LIMIT $take

-- YDB Ydb
DECLARE $take Int32
SET     $take = 2

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
LIMIT $take

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
LIMIT $take

