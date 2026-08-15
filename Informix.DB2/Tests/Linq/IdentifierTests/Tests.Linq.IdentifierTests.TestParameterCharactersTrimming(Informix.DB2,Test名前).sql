-- Informix.DB2 Informix
DECLARE @Test Integer(4) -- Int32
SET     @Test = 2

UPDATE
	testparams t
SET
	"Test名前" = @Test
WHERE
	t."Test名前" = 1

