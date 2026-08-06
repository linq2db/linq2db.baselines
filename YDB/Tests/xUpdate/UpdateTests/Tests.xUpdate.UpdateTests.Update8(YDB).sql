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
DECLARE $Value1 Int32
SET     $Value1 = 1002
DECLARE $ParentID Int32
SET     $ParentID = 1001

UPDATE
	Parent
SET
	Value1 = $Value1
WHERE
	Parent.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $ParentID
LIMIT 2

