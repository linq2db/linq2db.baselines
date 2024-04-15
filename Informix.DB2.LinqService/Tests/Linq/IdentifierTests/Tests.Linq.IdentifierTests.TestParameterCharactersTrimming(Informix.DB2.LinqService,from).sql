BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS testparams
(
	"from" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	testparams t
SET
	"from" = 2
WHERE
	t."from" = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

