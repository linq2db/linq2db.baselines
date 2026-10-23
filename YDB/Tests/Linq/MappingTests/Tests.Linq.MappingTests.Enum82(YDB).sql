-- YDB Ydb
DECLARE $testValue Int32
SET     $testValue = 1

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.Value1 = $testValue

