-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

-- Informix.DB2 Informix

SELECT
	p.ParentID
FROM
	Parent p

-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int NOT NULL
)

INSERT BULK TempTable

-- Informix.DB2 Informix

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

