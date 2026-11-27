-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1.ID,
	t1."Value"
FROM
	"QualifiedNameTable"@ORC12 t1

