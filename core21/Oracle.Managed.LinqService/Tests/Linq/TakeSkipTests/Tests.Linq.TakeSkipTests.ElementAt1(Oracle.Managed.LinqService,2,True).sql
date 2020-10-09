BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 1

SELECT 
	p.ParentID, 
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID > 1
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

