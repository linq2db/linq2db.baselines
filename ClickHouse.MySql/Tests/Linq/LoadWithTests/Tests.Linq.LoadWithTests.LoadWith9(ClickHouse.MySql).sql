BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	a_GrandChildren.ParentID,
	a_GrandChildren.ChildID,
	a_GrandChildren.GrandChildID
FROM
	GrandChild p
		LEFT JOIN Child a_Child ON p.ParentID = a_Child.ParentID AND p.ParentID IS NOT NULL AND p.ChildID = a_Child.ChildID AND p.ChildID IS NOT NULL
		INNER JOIN GrandChild a_GrandChildren ON a_Child.ParentID = a_GrandChildren.ParentID AND a_GrandChildren.ParentID IS NOT NULL AND a_Child.ChildID = a_GrandChildren.ChildID AND a_GrandChildren.ChildID IS NOT NULL
LIMIT 1

