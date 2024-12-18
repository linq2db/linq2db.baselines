BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Assignee
FROM
	Child x
		LEFT JOIN (
			SELECT
				a_GrandChildren.ParentID as Assignee,
				ROW_NUMBER() OVER (PARTITION BY a_GrandChildren.ParentID, a_GrandChildren.ChildID ORDER BY a_GrandChildren.ParentID) as rn,
				a_GrandChildren.ChildID as ChildID
			FROM
				GrandChild a_GrandChildren
		) t1 ON x.ParentID = t1.Assignee AND t1.Assignee IS NOT NULL AND x.ChildID = t1.ChildID AND t1.ChildID IS NOT NULL AND t1.rn <= 1
ORDER BY
	t1.Assignee

