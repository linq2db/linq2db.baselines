-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT DISTINCT
	p.Value1 as Value1
FROM
	Parent p
ORDER BY
	Value1 DESC
LIMIT $take

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

