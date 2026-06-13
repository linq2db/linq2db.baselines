-- YDB Ydb

SELECT
	p1.ParentID as ParentID,
	p1.Value1 as Value1
FROM
	Parent p1
		CROSS JOIN Parent p2
WHERE
	p1.Value1 = p2.Value1

