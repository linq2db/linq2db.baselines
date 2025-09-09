BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1.ID,
	t1."Value"
FROM
	"Issue681Table"@XE t1

