-- DuckDB

DROP TABLE IF EXISTS DropTableTest

-- DuckDB

SELECT
	current_schema()
FROM
	LinqDataTypes t1
LIMIT 1

-- DuckDB

SELECT
	current_database()

-- DuckDB

CREATE TABLE DropTableTest
(
	ID INTEGER,

	PRIMARY KEY (ID)
)

-- DuckDB

INSERT INTO memory.main.DropTableTest
(
	ID
)
VALUES
(
	123
)

-- DuckDB

SELECT
	t1.ID
FROM
	memory.main.DropTableTest t1

-- DuckDB

DROP TABLE memory.main.DropTableTest

-- DuckDB

SELECT
	t1.ID
FROM
	memory.main.DropTableTest t1

