BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.ParentID,
	Count(*)
FROM
	Child x
		INNER JOIN GrandChild y ON x.ParentID = y.ParentID AND x.ChildID = y.ChildID
GROUP BY
	x.ParentID

