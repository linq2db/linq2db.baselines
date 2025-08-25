BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.ParentID,
	x.ChildID
FROM
	Child x
ORDER BY
	Mod(x.ChildID, 2),
	x.ChildID

