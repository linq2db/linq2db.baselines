-- YDB Ydb

SELECT
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID <= 2
ORDER BY
	p.ParentID

