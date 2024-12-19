BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS testparams
(
	"Test-Name" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TestName Integer(4) -- Int32
SET     @TestName = 2

UPDATE
	testparams t
SET
	"Test-Name" = @TestName
WHERE
	t."Test-Name" = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

