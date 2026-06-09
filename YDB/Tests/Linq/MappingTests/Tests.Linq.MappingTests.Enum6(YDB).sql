-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
WHERE
	p.Value1 = 1

