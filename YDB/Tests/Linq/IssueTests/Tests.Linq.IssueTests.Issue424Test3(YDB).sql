-- YDB Ydb
DECLARE $take Int32
SET     $take = 1
DECLARE $skip Int32
SET     $skip = 1

SELECT DISTINCT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1
ORDER BY
	ParentID DESC
LIMIT $take OFFSET $skip 

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

