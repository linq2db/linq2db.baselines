BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.ParentID, 
	t1.Value1
FROM
	Parent t1
WHERE
	(
		SELECT 
			r.Value1
		FROM
			Parent r
		FETCH NEXT :take ROWS ONLY
	) IS NOT NULL

