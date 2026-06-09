-- YDB Ydb

SELECT
	x.Value1 as Value_1,
	x.ParentID as ParentID
FROM
	Parent x
WHERE
	x.Value1 = 1 OR x.Value1 = 2

