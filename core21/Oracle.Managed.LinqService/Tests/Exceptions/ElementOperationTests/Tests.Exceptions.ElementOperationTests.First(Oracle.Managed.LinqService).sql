BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	p.ParentID, 
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 100
FETCH NEXT :take ROWS ONLY

