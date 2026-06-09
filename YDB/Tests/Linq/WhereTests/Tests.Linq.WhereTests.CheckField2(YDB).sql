-- YDB Ydb

SELECT
	p.Value1 as Value1,
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	p.ParentID = 1

