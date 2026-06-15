-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.Value1 <> 1 AND p.Value1 IS NOT NULL

