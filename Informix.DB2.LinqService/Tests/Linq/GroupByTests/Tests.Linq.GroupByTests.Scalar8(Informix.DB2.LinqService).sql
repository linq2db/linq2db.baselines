BeforeExecute
-- Informix.DB2 Informix

SELECT
	MAX(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

