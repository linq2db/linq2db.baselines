BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS testparams
(
	"TestИмя" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Test Integer(4) -- Int32
SET     @Test = 2

UPDATE
	testparams t
SET
	"TestИмя" = @Test
WHERE
	t."TestИмя" = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

