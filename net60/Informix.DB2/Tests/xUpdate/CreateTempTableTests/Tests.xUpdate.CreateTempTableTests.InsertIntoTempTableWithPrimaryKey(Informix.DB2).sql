﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TEMP TABLE TableWithPrimaryKey
(
	"Key" Int NOT NULL,

	PRIMARY KEY ("Key")
)

BeforeExecute
INSERT BULK TableWithPrimaryKey

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TableWithPrimaryKey

