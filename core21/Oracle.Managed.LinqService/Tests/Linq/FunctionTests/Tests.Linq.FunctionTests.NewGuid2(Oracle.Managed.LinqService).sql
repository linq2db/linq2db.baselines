BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	Sys_Guid()
FROM
	LinqDataTypes p
FETCH NEXT :take ROWS ONLY

