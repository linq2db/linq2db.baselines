﻿BeforeExecute
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
DECLARE @from Integer(4) -- Int32
SET     @from = 2

UPDATE
	testparams
SET
	testparams."from" = @from
WHERE
	testparams."from" = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS testparams

