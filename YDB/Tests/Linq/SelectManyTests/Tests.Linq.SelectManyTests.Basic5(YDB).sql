-- YDB Ydb

SELECT
	a_GrandChildren.ParentID as ParentID,
	a_GrandChildren.ChildID as ChildID,
	a_GrandChildren.GrandChildID as GrandChildID
FROM
	Child t
		LEFT JOIN Parent a_Parent ON t.ParentID = a_Parent.ParentID
		INNER JOIN GrandChild a_GrandChildren ON a_Parent.ParentID = a_GrandChildren.ParentID

