-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
		LEFT JOIN Child ch ON p.ParentID = ch.ParentID
WHERE
	ch.ParentID IS NOT NULL

