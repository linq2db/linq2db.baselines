﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv', 'current_schema') as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5

DELETE FROM
	SYSTEM."Issue681Table" t1
WHERE
	t1.ID = :ID

