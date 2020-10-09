BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Max(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

