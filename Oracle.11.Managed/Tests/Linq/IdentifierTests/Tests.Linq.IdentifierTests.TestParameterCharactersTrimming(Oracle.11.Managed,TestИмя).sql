BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Test Int32
SET     @Test = 2

UPDATE
	"testparams" t
SET
	"TestИмя" = :Test
WHERE
	t."TestИмя" = 1

