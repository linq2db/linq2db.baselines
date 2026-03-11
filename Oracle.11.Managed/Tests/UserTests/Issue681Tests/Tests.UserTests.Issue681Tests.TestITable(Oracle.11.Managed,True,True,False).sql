-- Oracle.11.Managed Oracle11

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."Value"
FROM
	"Issue681Table"@XE t1

