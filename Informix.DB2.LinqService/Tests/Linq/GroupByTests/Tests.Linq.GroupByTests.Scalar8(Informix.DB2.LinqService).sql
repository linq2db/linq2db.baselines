BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	MAX(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

