BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	t.ParentID,
	t.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child t
		LEFT JOIN Parent a_Parent ON t.ParentID = a_Parent.ParentID

