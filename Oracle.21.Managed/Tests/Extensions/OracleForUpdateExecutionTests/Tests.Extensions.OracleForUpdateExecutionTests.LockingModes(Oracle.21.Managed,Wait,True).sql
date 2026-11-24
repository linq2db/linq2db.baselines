-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."LockId",
	t1."Value"
FROM
	"OracleRowLocks" t1
FOR UPDATE OF t1."LockId", t1."Value" WAIT 1

