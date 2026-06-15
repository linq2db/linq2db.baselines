-- YDB Ydb
DECLARE $take Int32
SET     $take = 2

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1
ORDER BY
	t1.ParentID
LIMIT $take

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

