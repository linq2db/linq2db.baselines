-- Informix.DB2 Informix

SELECT
	x.ParentID,
	x.ChildID
FROM
	Child x
ORDER BY
	x.ChildID DESC,
	Mod(x.ChildID, 2) DESC

