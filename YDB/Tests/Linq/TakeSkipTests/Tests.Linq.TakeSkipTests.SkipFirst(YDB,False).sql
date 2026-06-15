-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID > 1
ORDER BY
	p.ParentID
LIMIT 1 OFFSET 1 

