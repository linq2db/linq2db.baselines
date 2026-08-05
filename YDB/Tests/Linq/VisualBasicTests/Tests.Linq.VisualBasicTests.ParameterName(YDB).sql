-- YDB Ydb
DECLARE $VBLocal_id Int32
SET     $VBLocal_id = 1

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $VBLocal_id

