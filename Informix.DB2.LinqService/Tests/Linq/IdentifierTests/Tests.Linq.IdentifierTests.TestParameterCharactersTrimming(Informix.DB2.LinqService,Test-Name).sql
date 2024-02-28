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
	testparams
SET
	testparams."Test-Name" = @TestName
WHERE
	testparams."Test-Name" = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

