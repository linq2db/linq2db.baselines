-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 100500
DECLARE $Value1 Int32
SET     $Value1 = NULL

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
SET     $id = 100500

SELECT
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	p.ParentID = $id
LIMIT 1

-- YDB Ydb
DECLARE $id Int32
SET     $id = 100500
DECLARE $ParentID Int32
SET     $ParentID = 100500

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		Parent p
	WHERE
		p.ParentID = $id
;

UPDATE
	Parent
SET
	Value1 = $ParentID
WHERE
	Parent.ParentID = $id AND $CTE_1 > 0

