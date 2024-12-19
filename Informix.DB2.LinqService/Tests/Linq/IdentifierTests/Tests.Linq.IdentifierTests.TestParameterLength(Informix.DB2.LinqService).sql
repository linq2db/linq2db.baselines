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
DECLARE @A123456789b123456789c123456789d123456789e123456789 Integer(4) -- Int32
SET     @A123456789b123456789c123456789d123456789e123456789 = 2

UPDATE
	testparams t
SET
	col1 = @A123456789b123456789c123456789d123456789e123456789
WHERE
	t.Column1 = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

