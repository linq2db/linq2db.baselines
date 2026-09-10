-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 2

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $ParentID

