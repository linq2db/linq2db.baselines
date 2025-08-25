BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @TestName Int32
SET     @TestName = 2

UPDATE
	"testparams" t
SET
	"Test-Name" = :TestName
WHERE
	t."Test-Name" = 1

