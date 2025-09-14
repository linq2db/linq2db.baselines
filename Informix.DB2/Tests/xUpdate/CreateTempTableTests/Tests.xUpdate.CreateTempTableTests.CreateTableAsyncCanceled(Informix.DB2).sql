BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TEMP TABLE TempTable
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TempTable

