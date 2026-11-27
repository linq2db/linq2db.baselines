-- Informix.DB2 Informix
SELECT
	DBSERVERNAME
FROM table(set{1})

-- Informix.DB2 Informix
DROP TABLE IF EXISTS QualifiedNameTable2

-- Informix.DB2 Informix
CREATE TABLE QualifiedNameTable2
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

