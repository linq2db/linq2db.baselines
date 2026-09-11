-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001
DECLARE $Value1 Int32
SET     $Value1 = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	$ParentID,
	$Value1
)

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001

SELECT
	COUNT(*) as Count_1
FROM
	Parent p
WHERE
	p.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001

SELECT
	COUNT(*) as Count_1
FROM
	Parent p
WHERE
	p.ParentID = $ParentID

