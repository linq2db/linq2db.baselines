BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.Value1 = 1 AND ROWNUM <= :take

