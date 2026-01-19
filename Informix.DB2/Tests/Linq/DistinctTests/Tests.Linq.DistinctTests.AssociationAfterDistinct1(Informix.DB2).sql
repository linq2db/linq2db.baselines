-- Informix.DB2 Informix

SELECT
	t3.ParentID,
	t3.ChildID
FROM
	(
		SELECT
			t2.ParentID,
			t2.ChildID,
			(
				SELECT
					COUNT(*)
				FROM
					Child a_Children
				WHERE
					a_Parent.ParentID = a_Children.ParentID
			) as Count_1
		FROM
			(
				SELECT DISTINCT
					t1.ParentID,
					t1.ChildID
				FROM
					Child t1
			) t2
				LEFT JOIN Parent a_Parent ON t2.ParentID = a_Parent.ParentID
	) t3
ORDER BY
	t3.Count_1

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

