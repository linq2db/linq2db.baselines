-- YDB Ydb

SELECT
	a_Children.ParentID as ParentID,
	a_Children.ChildID as ChildID
FROM
	Parent t1
		INNER JOIN Child a_Children ON t1.ParentID = a_Children.ParentID

