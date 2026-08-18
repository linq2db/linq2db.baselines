-- YDB Ydb
DECLARE $id Int32
SET     $id = 1

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $id

