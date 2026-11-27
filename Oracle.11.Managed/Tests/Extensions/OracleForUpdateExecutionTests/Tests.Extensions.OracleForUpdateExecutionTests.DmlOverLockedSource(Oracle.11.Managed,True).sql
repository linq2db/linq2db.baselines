-- Oracle.11.Managed Oracle11
DECLARE @Value Int32
SET     @Value = 42

UPDATE
	"OracleRowLocks" r
SET
	"Value" = :Value
WHERE
	r."LockId" = 1

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
DELETE FROM
	"OracleRowLocks" r
WHERE
	r."LockId" = 2

