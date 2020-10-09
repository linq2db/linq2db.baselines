BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	Nvl((
		SELECT 
			a_Parent.Value1
		FROM
			Child ch
				LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
		WHERE
			ch.ChildID = c_1.ChildID AND ROWNUM <= :take
	), c_1.ChildID)
FROM
	Child c_1

