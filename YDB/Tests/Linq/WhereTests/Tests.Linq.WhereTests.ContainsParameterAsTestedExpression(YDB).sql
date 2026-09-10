-- YDB Ydb
DECLARE $id Int32
SET     $id = 2

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	$id IN (c_1.ParentID, c_1.ChildID)

