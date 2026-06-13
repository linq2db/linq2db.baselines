-- YDB Ydb

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

-- YDB Ydb
DECLARE $id Int32
SET     $id = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1,
	$id
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

