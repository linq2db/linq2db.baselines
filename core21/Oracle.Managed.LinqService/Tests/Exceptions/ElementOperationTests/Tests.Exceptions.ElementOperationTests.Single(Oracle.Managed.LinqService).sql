BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.ParentID, 
	t1.Value1
FROM
	Parent t1
FETCH NEXT :take ROWS ONLY

