-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

-- Informix.DB2 Informix

CREATE TEMP TABLE TestTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (Id)
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value",
	t1.Id,
	t1."Value",
	t1.Id,
	t1."Value"
FROM
	TestTable t1

-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

