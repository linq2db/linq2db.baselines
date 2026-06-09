-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1001
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1002

DELETE FROM
	Child
WHERE
	Child.ChildID IN ($Ids0_1, $Ids0_2)

-- YDB Ydb

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1,
	1001
)

-- YDB Ydb

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1,
	1002
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Child c_1
WHERE
	c_1.ParentID = 1

