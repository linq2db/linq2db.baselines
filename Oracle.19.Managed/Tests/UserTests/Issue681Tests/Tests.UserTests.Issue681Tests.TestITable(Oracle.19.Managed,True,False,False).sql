-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value"
FROM
	"Issue681Table"@XE t1

