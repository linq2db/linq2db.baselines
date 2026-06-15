-- YDB Ydb

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

-- YDB Ydb
DECLARE $id Int32
SET     $id = 1001
DECLARE $ParentID Int32
SET     $ParentID = 1

INSERT INTO Child
(
	ChildID,
	ParentID
)
VALUES
(
	$id,
	$ParentID
)

-- YDB Ydb
DECLARE $id Int32
SET     $id = 1001

SELECT
	COUNT(*) as Count_1
FROM
	Child c_1
WHERE
	c_1.ChildID = $id

-- YDB Ydb

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

