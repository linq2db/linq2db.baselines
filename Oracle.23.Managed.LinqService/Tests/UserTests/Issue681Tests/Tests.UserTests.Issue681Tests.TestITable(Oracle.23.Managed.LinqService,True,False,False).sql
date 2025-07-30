BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value"
FROM
	"Issue681Table"@"free" t1

