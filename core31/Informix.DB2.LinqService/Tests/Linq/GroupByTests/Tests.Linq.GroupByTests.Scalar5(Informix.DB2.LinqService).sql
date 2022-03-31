BeforeExecute
-- Informix.DB2 Informix

SELECT
	Max(ch.ParentID)
FROM
	Child ch
GROUP BY
	ch.ParentID

