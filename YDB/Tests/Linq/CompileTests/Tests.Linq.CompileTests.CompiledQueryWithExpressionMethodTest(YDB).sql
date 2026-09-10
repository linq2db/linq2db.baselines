-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	x.ParentID as ParentID,
	x.Value1 as Value1
FROM
	Parent x
WHERE
	x.ParentID = $p
ORDER BY
	x.ParentID DESC
LIMIT 1

