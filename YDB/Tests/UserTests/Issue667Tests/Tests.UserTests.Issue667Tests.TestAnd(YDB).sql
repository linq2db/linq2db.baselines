-- YDB Ydb

SELECT
	f.ParentID as ParentID,
	f.Value1 as Value1
FROM
	Parent f
WHERE
	f.ParentID >= 1 AND f.ParentID <= 4

