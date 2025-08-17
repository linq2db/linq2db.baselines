BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS CreateIfNotExistsTable

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TEMP TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO CreateIfNotExistsTable
(
	Id,
	"Value"
)
VALUES
(
	1,
	2
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1."Value"
FROM
	CreateIfNotExistsTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TEMP TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS CreateIfNotExistsTable

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS CreateIfNotExistsTable

