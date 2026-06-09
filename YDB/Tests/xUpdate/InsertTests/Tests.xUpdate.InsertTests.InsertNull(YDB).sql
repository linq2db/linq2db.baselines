-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001
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

SELECT
	COUNT(*) as Count_1
FROM
	Parent p
WHERE
	p.ParentID = 1001

