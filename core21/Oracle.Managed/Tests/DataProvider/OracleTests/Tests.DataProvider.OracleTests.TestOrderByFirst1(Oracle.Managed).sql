BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	x.ParentID, 
	x.Value1
FROM
	Parent x
WHERE
	x.Value1 = 1
ORDER BY
	x.ParentID DESC
FETCH NEXT :take ROWS ONLY

