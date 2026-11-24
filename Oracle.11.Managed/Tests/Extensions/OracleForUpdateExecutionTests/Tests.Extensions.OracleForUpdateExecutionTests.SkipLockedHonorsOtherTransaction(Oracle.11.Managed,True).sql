-- Oracle.11.Managed Oracle11
SELECT
	r."LockId",
	r."Value"
FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 1
FOR UPDATE

-- Oracle.11.Managed Oracle11
SELECT
	t1."LockId",
	t1."Value"
FROM
	"OracleRowLocks" t1
FOR UPDATE SKIP LOCKED

