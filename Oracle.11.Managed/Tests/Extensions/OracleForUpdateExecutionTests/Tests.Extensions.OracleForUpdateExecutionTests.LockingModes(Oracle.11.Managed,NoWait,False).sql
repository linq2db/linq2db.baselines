-- Oracle.11.Managed Oracle11
SELECT
	t1."LockId",
	t1."Value"
FROM
	"OracleRowLocks" t1
FOR UPDATE NOWAIT

