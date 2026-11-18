-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @TestName Int32
SET     @TestName = 2

UPDATE
	"testparams" t
SET
	"Test-Name" = :TestName
WHERE
	t."Test-Name" = 1

