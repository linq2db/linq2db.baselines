BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int NOT NULL
)

BeforeExecute
INSERT BULK TempTable

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS TempTable

