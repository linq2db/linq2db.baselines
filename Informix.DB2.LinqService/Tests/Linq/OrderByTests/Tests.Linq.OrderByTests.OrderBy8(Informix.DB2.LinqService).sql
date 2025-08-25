BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.ParentID,
	x.ChildID
FROM
	Child x
ORDER BY
	x.ChildID,
	Mod(x.ChildID, 2)

