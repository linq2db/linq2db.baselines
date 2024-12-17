BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS testparams
(
	p_p Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p_p Integer(4) -- Int32
SET     @p_p = 2

UPDATE
	testparams t
SET
	p_p = @p_p
WHERE
	t.p_p = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

