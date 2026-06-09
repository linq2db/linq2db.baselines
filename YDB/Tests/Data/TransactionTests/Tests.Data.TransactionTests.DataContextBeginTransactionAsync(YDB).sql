-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

BeginTransactionAsync
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

