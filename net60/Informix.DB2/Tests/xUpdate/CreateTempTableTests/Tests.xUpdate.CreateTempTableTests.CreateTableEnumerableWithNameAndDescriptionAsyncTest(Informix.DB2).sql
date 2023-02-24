BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TEMP TABLE IF NOT EXISTS TempTable
(
	Name NVarChar(20) NOT NULL
)

BeforeExecute
INSERT BULK TempTable

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS TempTable

