-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	r.ParentID as ParentID,
	r.Value1 as Value1
FROM
	Parent r
WHERE
	r.ParentID = $p

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

