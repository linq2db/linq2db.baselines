BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	a_Parent.Value1
FROM
	Parent x
		LEFT JOIN Parent a_Parent ON x.ParentID = a_Parent.Value1
WHERE
	x.Value1 IS NULL
FETCH NEXT :take ROWS ONLY

