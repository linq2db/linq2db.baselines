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
	r."LockId",
	r."Value"
FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 1
FOR UPDATE NOWAIT

