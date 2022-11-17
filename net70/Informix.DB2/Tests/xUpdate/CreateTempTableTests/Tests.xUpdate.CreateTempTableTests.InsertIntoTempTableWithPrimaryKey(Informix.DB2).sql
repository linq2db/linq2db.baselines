BeforeExecute
-- Informix.DB2 Informix

CREATE TEMP TABLE TableWithPrimaryKey2
(
	"Key" Int NOT NULL,

	PRIMARY KEY ("Key")
)

BeforeExecute
INSERT BULK TableWithPrimaryKey2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TableWithPrimaryKey2

