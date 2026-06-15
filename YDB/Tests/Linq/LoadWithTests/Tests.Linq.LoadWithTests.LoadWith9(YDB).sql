-- YDB Ydb

SELECT
	a_GrandChildren.ParentID as ParentID,
	a_GrandChildren.ChildID as ChildID,
	a_GrandChildren.GrandChildID as GrandChildID
FROM
	GrandChild p
		LEFT JOIN Child a_Child ON p.ParentID = a_Child.ParentID AND p.ChildID = a_Child.ChildID
		INNER JOIN GrandChild a_GrandChildren ON a_Child.ParentID = a_GrandChildren.ParentID
WHERE
	a_Child.ChildID = a_GrandChildren.ChildID OR a_Child.ChildID IS NULL AND a_GrandChildren.ChildID IS NULL
LIMIT 1

