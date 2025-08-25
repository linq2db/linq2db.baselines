BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Parent p
		LEFT JOIN Child ch ON p.ParentID = ch.ParentID

