-- Informix.DB2 Informix

CREATE TEMP TABLE IsTemporaryTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (Id)
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	IsTemporaryTable t1

-- Informix.DB2 Informix

DROP TABLE IF EXISTS IsTemporaryTable

