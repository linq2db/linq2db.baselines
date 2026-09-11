-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	p.Value1 * 100 as Value_1
FROM
	Parent p
WHERE
	p.ParentID = 1 AND p.Value1 * 100 > 0

