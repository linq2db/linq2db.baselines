BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (2)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (3)

