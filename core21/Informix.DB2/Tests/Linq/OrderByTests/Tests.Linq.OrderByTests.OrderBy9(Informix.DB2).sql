BeforeExecute
-- Informix.DB2 Informix

SELECT 
	x.ParentID, 
	x.ChildID
FROM
	Child x
ORDER BY
	Mod(x.ChildID, 2) DESC,
	x.ChildID DESC

