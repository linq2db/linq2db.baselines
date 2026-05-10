-- DuckDB

SELECT
	current_schema()
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB

DROP TABLE IF EXISTS Issue681Table2

-- DuckDB

CREATE TABLE Issue681Table2
(
	ID      INTEGER,
	"Value" INTEGER NOT NULL,

	PRIMARY KEY (ID)
)

-- DuckDB

DROP TABLE main.Issue681Table2

