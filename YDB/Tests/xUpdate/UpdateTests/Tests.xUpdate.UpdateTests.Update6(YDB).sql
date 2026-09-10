-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001
DECLARE $Value1 Int32
SET     $Value1 = 1

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
DECLARE $id Int32
SET     $id = 1001

SELECT
	COUNT(*) as Count_1
FROM
	Parent p
WHERE
	p.ParentID = $id AND p.Value1 = 1

-- YDB Ydb
DECLARE $id Int32
SET     $id = 1001

UPDATE
	Parent
SET
	Value1 = 2
WHERE
	Parent.ParentID = $id

-- YDB Ydb
DECLARE $id Int32
SET     $id = 1001

SELECT
	COUNT(*) as Count_1
FROM
	Parent p
WHERE
	p.ParentID = $id AND p.Value1 = 2

