-- YDB Ydb

SELECT
	a_Children.ParentID as ParentID,
	a_Children.ChildID as ChildID
FROM
	Parent t
		INNER JOIN Child a_Children ON t.ParentID = a_Children.ParentID
WHERE
	a_Children.ParentID = 1

