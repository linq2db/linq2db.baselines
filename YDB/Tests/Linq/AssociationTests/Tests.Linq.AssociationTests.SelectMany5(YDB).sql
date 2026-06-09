-- YDB Ydb

SELECT
	p.ParentID as ParentID
FROM
	Parent p
		INNER JOIN Child a_Children ON p.ParentID = a_Children.ParentID

