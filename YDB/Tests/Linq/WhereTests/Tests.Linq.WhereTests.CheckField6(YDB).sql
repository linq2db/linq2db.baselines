-- YDB Ydb

SELECT
	p.Value1 as Value1,
	p.Value1 * 100 as Value_1,
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	p.ParentID = 1 AND p.Value1 * 100 > 0

