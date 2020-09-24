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
FETCH NEXT :take ROWS ONLY

