BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Test Int32
SET     @Test = 2

UPDATE
	"testparams" t
SET
	"TestИмя" = :Test
WHERE
	t."TestИмя" = 1

