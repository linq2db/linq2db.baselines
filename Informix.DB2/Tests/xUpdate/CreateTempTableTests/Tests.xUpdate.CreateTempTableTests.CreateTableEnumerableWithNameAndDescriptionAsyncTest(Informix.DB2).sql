-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

-- Informix.DB2 Informix

CREATE TEMP TABLE IF NOT EXISTS TempTable
(
	Name NVarChar(20) NOT NULL
)

INSERT BULK TempTable

-- Informix.DB2 Informix

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

