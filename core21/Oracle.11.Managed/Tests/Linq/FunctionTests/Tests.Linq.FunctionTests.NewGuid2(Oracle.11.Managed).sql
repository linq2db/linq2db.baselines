BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	Sys_Guid()
FROM
	LinqDataTypes p
WHERE
	ROWNUM <= :take

