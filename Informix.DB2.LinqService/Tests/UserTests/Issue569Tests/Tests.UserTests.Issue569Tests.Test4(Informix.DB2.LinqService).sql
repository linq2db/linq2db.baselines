BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	(
		SELECT
			child_1.ParentID,
			child_1.ChildID
		FROM
			Parent t1,
			Parent s,
			Child child_1
	) sub
		LEFT JOIN GrandChild grandChild_1 ON sub.ParentID = grandChild_1.ParentID AND grandChild_1.ParentID IS NOT NULL AND sub.ChildID = grandChild_1.ChildID AND grandChild_1.ChildID IS NOT NULL

