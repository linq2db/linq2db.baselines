BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t.ParentID,
	t.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child t
		LEFT JOIN Parent a_Parent ON t.ParentID = a_Parent.ParentID
WHERE
	ROWNUM <= :take

