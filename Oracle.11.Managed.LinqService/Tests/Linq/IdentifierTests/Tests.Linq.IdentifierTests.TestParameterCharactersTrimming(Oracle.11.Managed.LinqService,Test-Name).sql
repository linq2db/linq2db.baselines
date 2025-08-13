BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @TestName Int32
SET     @TestName = 2

UPDATE
	"testparams" t
SET
	"Test-Name" = :TestName
WHERE
	t."Test-Name" = 1

