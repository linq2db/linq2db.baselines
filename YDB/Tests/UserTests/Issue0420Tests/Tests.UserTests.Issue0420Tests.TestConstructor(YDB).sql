-- YDB Ydb

SELECT
	a_Children.ParentID as ParentID,
	a_Children.ChildID as ChildID
FROM
	Parent p
		INNER JOIN Child a_Children ON p.ParentID = a_Children.ParentID

