BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	p.ParentID, 
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 2 AND ROWNUM <= :take

