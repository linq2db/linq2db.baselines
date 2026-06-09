-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1001
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1002

DELETE FROM
	GrandChild
WHERE
	GrandChild.GrandChildID IN ($Ids0_1, $Ids0_2)

-- YDB Ydb

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1,
	1,
	1001
)

-- YDB Ydb

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1,
	2,
	1002
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	GrandChild gc
WHERE
	gc.ParentID = 1

