-- Oracle.18.Managed Oracle.Managed Oracle12
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

