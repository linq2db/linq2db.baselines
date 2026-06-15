-- YDB Ydb

SELECT
	x.ParentID as ParentID,
	x.Value1 as Value1
FROM
	Parent x
WHERE
	x.ParentID > 1

