BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.ParentID, 
	t1.Value1
FROM
	( 
		SELECT 
			x.ParentID, 
			x.Value1
		FROM
			Parent x
		WHERE
			x.Value1 = 1
		ORDER BY
			x.ParentID DESC
	) t1
WHERE
	ROWNUM <= :take

