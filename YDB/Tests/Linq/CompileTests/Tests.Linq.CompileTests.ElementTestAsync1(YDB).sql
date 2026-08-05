-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID = $p
LIMIT 1

-- YDB Ydb
DECLARE $p Int32
SET     $p = 2

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID = $p
LIMIT 1

