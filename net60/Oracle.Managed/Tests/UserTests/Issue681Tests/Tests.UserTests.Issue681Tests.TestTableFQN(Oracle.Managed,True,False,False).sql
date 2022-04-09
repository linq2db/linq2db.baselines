BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"LinqDataTypes"@ORC12 t1

