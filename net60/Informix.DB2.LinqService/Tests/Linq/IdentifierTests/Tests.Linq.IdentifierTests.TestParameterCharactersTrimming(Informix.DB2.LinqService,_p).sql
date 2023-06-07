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
DECLARE @p Integer(4) -- Int32
SET     @p = 2

UPDATE
	testparams
SET
	testparams._p = @p
WHERE
	testparams._p = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

