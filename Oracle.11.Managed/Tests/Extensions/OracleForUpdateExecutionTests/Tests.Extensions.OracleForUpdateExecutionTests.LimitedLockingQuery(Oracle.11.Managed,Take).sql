-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	r."LockId",
	r."Value"
FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 1 AND ROWNUM <= :take
FOR UPDATE

