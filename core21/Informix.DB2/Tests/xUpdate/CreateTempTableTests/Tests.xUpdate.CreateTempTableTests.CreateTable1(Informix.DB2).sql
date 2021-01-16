BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

