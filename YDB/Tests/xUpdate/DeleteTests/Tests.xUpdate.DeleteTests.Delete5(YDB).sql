-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	$ParentID,
	1
)

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1002

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	$ParentID,
	1
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1001
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1002

DELETE FROM
	Parent
WHERE
	Parent.ParentID IN ($Ids0_1, $Ids0_2)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

