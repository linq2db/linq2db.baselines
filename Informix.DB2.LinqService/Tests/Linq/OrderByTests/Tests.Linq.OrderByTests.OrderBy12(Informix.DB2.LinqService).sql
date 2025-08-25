BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
ORDER BY
	Mod(ch.ChildID, 2) DESC

