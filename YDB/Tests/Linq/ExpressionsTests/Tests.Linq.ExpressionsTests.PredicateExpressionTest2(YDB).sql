-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Child c_1
		INNER JOIN Parent p ON p.ParentID = c_1.ParentID

