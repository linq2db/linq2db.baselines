-- Informix.DB2 Informix
DECLARE @TestName Integer(4) -- Int32
SET     @TestName = 2

UPDATE
	testparams t
SET
	"Test-Name" = @TestName
WHERE
	t."Test-Name" = 1

