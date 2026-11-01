-- YDB Ydb
SELECT
	t3.ParentID as ParentID,
	t3.ChildID as ChildID
FROM
	GrandChild p
		LEFT JOIN (
			SELECT
				a_Parent.ParentID as ParentID,
				a_Child.ParentID as ParentID_1,
				a_Child.ChildID as ChildID
			FROM
				Child a_Child
					LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
		) t1 ON p.ParentID = t1.ParentID_1 AND p.ChildID = t1.ChildID
		LEFT JOIN (
			SELECT
				t2.ParentID as ParentID,
				t2.ChildID as ChildID
			FROM
				(
					SELECT
						a_Children.ParentID as ParentID,
						a_Children.ChildID as ChildID,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID) as rn
					FROM
						Child a_Children
				) t2
			WHERE
				t2.rn = 1
		) t3 ON t1.ParentID = t3.ParentID
WHERE
	p.ChildID > 0

