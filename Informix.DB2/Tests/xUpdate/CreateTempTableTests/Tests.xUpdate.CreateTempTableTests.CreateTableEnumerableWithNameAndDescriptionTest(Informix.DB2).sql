BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TempTable
(
	Name NVarChar(20) NOT NULL,

	PRIMARY KEY (Name)
)

BeforeExecute
INSERT BULK TempTable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

