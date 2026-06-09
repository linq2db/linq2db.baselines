-- YDB Ydb

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID % 2) as ParentID,
	p.Value1 as Value1
FROM
	Parent p

