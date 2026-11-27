-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."LockId",
	r."Value"
FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 1
FOR UPDATE

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."LockId",
	r."Value"
FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 1
FOR UPDATE NOWAIT

