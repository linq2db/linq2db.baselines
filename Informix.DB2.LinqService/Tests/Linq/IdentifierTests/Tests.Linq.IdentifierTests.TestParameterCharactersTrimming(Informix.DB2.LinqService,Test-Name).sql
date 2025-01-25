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

UPDATE
	testparams t
SET
	"Test-Name" = 2
WHERE
	t."Test-Name" = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

