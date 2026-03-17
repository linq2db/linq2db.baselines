-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

-- Informix.DB2 Informix

SELECT
	p.ParentID
FROM
	Parent p

-- Informix.DB2 Informix

CREATE TEMP TABLE TempTable
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

-- Informix.DB2 Informix

DROP TABLE TempTable

