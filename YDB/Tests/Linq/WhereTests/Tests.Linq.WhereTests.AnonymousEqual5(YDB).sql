-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 3
DECLARE $Value1 Int32
SET     $Value1 = 3

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $ParentID AND p.Value1 = $Value1

