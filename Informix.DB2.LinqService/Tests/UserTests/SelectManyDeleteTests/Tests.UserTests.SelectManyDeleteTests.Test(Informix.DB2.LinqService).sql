BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	GrandChild
WHERE
	EXISTS(
		SELECT
			a_GrandChildren.ChildID
		FROM
			Parent x
				INNER JOIN Child a_Children ON x.ParentID = a_Children.ParentID
				INNER JOIN GrandChild a_GrandChildren ON a_Children.ChildID = a_GrandChildren.ChildID
		WHERE
			x.ParentID IN (0, 0) AND GrandChild.ChildID = a_GrandChildren.ChildID
	)

