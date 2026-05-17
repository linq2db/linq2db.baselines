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

INSERT INTO TestData.main.DropTableTest
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
	TestData.main.DropTableTest t1

-- DuckDB

DROP TABLE TestData.main.DropTableTest

-- DuckDB

SELECT
	t1.ID
FROM
	TestData.main.DropTableTest t1

