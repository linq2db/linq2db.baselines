-- Informix.DB2 Informix

SELECT FIRST 3
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	ch.ChildID > 3 OR ch.ChildID < 4

