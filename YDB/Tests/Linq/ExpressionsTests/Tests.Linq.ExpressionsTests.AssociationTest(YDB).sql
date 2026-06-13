-- YDB Ydb

SELECT
	a_GrandChildren.ParentID as ParentID,
	a_GrandChildren.ChildID as ChildID,
	a_GrandChildren.GrandChildID as GrandChildID
FROM
	Parent p
		INNER JOIN Child a_Children ON p.ParentID = a_Children.ParentID
		INNER JOIN GrandChild a_GrandChildren ON a_Children.ParentID = a_GrandChildren.ParentID AND a_Children.ChildID = a_GrandChildren.ChildID

