-- Informix.DB2 Informix
SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix
DROP TABLE IF EXISTS QualifiedNameTable2

-- Informix.DB2 Informix
CREATE TABLE QualifiedNameTable2
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

-- Informix.DB2 Informix
DROP TABLE testdb:QualifiedNameTable2

