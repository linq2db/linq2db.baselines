-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Test Int32
SET     @Test = 2

UPDATE
	"testparams" t
SET
	"Test名前" = :Test
WHERE
	t."Test名前" = 1

