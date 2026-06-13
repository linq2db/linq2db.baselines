-- YDB Ydb
DECLARE $id Int32
SET     $id = 1

SELECT
	c_1.ParentID as ParentID,
	c_1.Value1 as Value1
FROM
	Parent c_1
WHERE
	c_1.ParentID = $id AND c_1.Value1 IS NULL

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

