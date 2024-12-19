BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS testparams
(
	"1p" Int NOT NULL
)

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

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

