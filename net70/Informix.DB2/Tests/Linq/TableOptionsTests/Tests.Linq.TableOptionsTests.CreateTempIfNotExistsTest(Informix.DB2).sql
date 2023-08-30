BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CreateIfNotExistsTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TEMP TABLE CreateIfNotExistsTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	CreateIfNotExistsTable t1

BeforeExecute
-- Informix.DB2 Informix

CREATE TEMP TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CreateIfNotExistsTable

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CreateIfNotExistsTable

