-- Oracle.11.Managed Oracle11
SELECT
	left_1."LockId",
	left_1."Value",
	left_1."LockId",
	left_1."Value"
FROM
	"OracleRowLocks" left_1
FOR UPDATE OF left_1."LockId"

