BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 3
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	ch.ChildID >= 0 AND ch.ChildID <= 100
ORDER BY
	ch.ParentID,
	ch.ChildID

