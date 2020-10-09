BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	a_Parent.Value1
FROM
	Parent x
		INNER JOIN Child c_1 ON x.ParentID = c_1.ParentID
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.Value1
WHERE
	a_Parent.Value1 IS NULL AND ROWNUM <= :take

