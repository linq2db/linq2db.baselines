BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	user
FROM
	LinqDataTypes t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	SYSTEM.LinqDataTypes t1

