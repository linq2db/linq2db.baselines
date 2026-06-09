-- YDB Ydb

SELECT
	t1.ParentID + 1 as Id,
	t1.ParentID as ParentID
FROM
	Parent t1

