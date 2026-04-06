-- DuckDB

DROP TABLE IF EXISTS DropTableTest

-- DuckDB

CREATE TABLE DropTableTest
(
	ID INTEGER,

	PRIMARY KEY (ID)
)

-- DuckDB

INSERT INTO DropTableTest
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
	DropTableTest t1

-- DuckDB

DROP TABLE DropTableTest

-- DuckDB

SELECT
	t1.ID
FROM
	DropTableTest t1

