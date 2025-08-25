BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT FIRST @take
	c_1.ParentID,
	c_1.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child c_1
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID

