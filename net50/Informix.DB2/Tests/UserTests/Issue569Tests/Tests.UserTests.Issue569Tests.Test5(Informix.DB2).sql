BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Parent parent_2
		INNER JOIN Child child_1 ON 1=1
		LEFT JOIN GrandChild t1 ON child_1.ParentID = t1.ParentID AND child_1.ChildID = t1.ChildID
		INNER JOIN Parent parent_1 ON 1=1

