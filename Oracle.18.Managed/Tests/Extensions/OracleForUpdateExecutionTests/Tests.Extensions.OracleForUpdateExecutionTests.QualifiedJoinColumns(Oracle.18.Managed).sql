-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	left_1."LockId",
	left_1."Value",
	right_1."LockId",
	right_1."Value"
FROM
	"OracleRowLocks" left_1
		INNER JOIN "OracleRowLocksOther" right_1 ON left_1."LockId" = right_1."LockId"
FOR UPDATE OF left_1."LockId"

