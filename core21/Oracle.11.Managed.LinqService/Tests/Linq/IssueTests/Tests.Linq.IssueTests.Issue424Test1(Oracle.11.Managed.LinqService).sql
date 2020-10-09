BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	t2.ParentID, 
	t2.Value1
FROM
	( 
		SELECT DISTINCT 
			t1.ParentID, 
			t1.Value1
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
	) t2
WHERE
	ROWNUM <= :take

