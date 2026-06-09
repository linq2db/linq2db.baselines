-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = 1 AND p.Value1 = 1 OR p.ParentID = 2 AND (p.ParentID <> 3 OR p.ParentID = 4) AND p.Value1 IS NOT NULL

