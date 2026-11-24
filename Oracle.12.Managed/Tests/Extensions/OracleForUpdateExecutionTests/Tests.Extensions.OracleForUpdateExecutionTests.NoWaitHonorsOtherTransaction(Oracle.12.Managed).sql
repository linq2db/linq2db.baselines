-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."LockId",
	r."Value"
FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 1
FOR UPDATE

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."LockId",
	r."Value"
FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 1
FOR UPDATE NOWAIT

