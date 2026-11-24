-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."LockId",
	t1."Value"
FROM
	"OracleRowLocks" t1
FOR UPDATE WAIT 1

