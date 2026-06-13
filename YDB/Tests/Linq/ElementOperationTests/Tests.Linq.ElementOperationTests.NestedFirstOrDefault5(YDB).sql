-- YDB Ydb

SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID
FROM
	GrandChild p
		LEFT JOIN Child a_Child ON p.ParentID = a_Child.ParentID AND p.ChildID = a_Child.ChildID
		LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
		LEFT JOIN (
			SELECT
				t1.ParentID as ParentID,
				t1.ChildID as ChildID
			FROM
				(
					SELECT
						a_Children.ParentID as ParentID,
						a_Children.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID) as rn
					FROM
						Child a_Children
				) t1
			WHERE
				t1.rn = 1
		) t2 ON a_Parent.ParentID = t2.ParentID
WHERE
	p.ChildID > 0

