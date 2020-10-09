BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Max(ch.ChildID)
FROM
	Child ch
GROUP BY
	ch.ChildID

