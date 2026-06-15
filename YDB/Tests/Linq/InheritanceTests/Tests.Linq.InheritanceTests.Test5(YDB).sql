-- YDB Ydb

SELECT
	p.Value1 as Value1,
	p.ParentID as ParentID,
	p.Value1 as Value1_1
FROM
	Parent p
WHERE
	p.Value1 <> 0 AND p.Value1 <> 1

