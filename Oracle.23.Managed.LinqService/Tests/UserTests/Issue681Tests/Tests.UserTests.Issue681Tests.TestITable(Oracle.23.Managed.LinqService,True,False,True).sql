﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv', 'current_schema') as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value"
FROM
	SYSTEM."Issue681Table"@"free" t1

