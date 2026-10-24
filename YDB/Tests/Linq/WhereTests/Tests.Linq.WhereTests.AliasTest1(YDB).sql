-- YDB Ydb
DECLARE $user Int32
SET     $user = 3

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $user

