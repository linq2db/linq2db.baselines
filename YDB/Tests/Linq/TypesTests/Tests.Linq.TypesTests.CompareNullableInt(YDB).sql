-- YDB Ydb

SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1
FROM
	Parent t

-- YDB Ydb
DECLARE $param Int32
SET     $param = 1

SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1
FROM
	Parent t
WHERE
	t.Value1 = $param

