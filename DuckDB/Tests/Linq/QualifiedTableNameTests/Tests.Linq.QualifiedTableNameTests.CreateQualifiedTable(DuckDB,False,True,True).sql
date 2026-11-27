-- DuckDB
SELECT
	current_database()

-- DuckDB
SELECT
	current_schema()
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB
DROP TABLE IF EXISTS QualifiedNameTable2

-- DuckDB
CREATE TABLE memory.main.QualifiedNameTable2
(
	ID      INTEGER,
	"Value" INTEGER NOT NULL,

	PRIMARY KEY (ID)
)

-- DuckDB
DROP TABLE IF EXISTS QualifiedNameTable2

