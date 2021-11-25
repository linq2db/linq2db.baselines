BeforeExecute
-- Informix.DB2 Informix

SELECT
	grandChild_1.ParentID,
	grandChild_1.ChildID,
	grandChild_1.GrandChildID
FROM
	GrandChild grandChild_1
		INNER JOIN Child child_1 ON 1=1
WHERE
	grandChild_1.ChildID IS NOT NULL

