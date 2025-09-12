BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Parent p,
	Child ch
WHERE
	p.ParentID = ch.ParentID

