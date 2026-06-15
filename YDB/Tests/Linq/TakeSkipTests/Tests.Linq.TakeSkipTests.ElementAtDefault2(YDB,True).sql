-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 300000

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID > 1
LIMIT 1 OFFSET $skip 

