-- DuckDB
SELECT
	current_database()

-- DuckDB
DROP TABLE IF EXISTS QualifiedNameTable2

-- DuckDB
CREATE TABLE memory.QualifiedNameTable2
(
	ID      INTEGER,
	"Value" INTEGER NOT NULL,

	PRIMARY KEY (ID)
)

-- DuckDB
DROP TABLE IF EXISTS QualifiedNameTable2

