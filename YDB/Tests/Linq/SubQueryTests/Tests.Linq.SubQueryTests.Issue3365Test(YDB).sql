-- YDB Ydb

SELECT
	t2.Assignee as Assignee
FROM
	Child x
		LEFT JOIN (
			SELECT
				t1.Assignee as Assignee,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						a_GrandChildren.ParentID as Assignee,
						ROW_NUMBER() OVER (PARTITION BY a_GrandChildren.ParentID, a_GrandChildren.ChildID ORDER BY a_GrandChildren.ParentID) as rn,
						a_GrandChildren.ChildID as ChildID
					FROM
						GrandChild a_GrandChildren
				) t1
			WHERE
				t1.rn = 1
		) t2 ON x.ParentID = t2.Assignee AND x.ChildID = t2.ChildID
ORDER BY
	t2.Assignee

