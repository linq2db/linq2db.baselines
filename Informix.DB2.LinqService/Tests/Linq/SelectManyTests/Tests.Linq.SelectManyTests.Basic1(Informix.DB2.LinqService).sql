BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Parent p
		CROSS JOIN Child t1

