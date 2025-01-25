BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

UPDATE
	testparams t
SET
	"1p" = @p
WHERE
	t."1p" = 1

