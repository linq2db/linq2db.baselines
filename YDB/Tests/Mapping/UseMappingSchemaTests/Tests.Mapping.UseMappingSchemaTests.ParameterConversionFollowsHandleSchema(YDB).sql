-- YDB Ydb
DECLARE $id Int32
SET     $id = 2

SELECT
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	Unwrap(CAST(p.ParentID AS Int64)) = $id

