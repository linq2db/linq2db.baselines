BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
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
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

