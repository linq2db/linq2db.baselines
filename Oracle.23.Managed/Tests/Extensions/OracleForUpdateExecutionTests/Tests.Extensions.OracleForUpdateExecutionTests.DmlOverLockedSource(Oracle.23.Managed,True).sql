-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 42

UPDATE
	"OracleRowLocks" r
SET
	"Value" = :Value
WHERE
	r."LockId" = 1

-- Oracle.23.Managed Oracle.Managed Oracle12
INSERT INTO "OracleRowLocks"
(
	"LockId",
	"Value"
)
SELECT
	r."LockId" + 10,
	r."Value"
FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 1

-- Oracle.23.Managed Oracle.Managed Oracle12
DELETE FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 2

