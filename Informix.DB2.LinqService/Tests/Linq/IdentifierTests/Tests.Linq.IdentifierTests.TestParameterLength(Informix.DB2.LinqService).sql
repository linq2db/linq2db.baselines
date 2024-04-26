BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS testparams
(
	col1    Int NOT NULL,
	Column1 Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	testparams t
SET
	col1 = 2
WHERE
	t.Column1 = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

