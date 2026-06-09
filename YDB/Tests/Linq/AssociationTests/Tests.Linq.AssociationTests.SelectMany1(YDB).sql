-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
		INNER JOIN Child a_Children ON p.ParentID = a_Children.ParentID

