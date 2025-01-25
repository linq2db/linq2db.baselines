BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS testparams
(
	_p Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	testparams t
SET
	_p = 2
WHERE
	t._p = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

