-- YDB Ydb

SELECT
	f.ParentID as ParentID,
	f.Value1 as Value1
FROM
	Parent f
WHERE
	f.ParentID >= 1 OR f.ParentID <= 4

