BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Child c_1
		INNER JOIN Parent p ON p.ParentID = c_1.ParentID

