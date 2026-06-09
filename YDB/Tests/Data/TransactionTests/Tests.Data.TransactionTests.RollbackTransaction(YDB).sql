-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1010
DECLARE $Value1 Int32
SET     $Value1 = 1010

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

UPDATE
	Parent
SET
	Value1 = 1012
WHERE
	Parent.ParentID = 1010

RollbackTransaction
-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1
FROM
	Parent t
WHERE
	t.ParentID = 1010
LIMIT 1

