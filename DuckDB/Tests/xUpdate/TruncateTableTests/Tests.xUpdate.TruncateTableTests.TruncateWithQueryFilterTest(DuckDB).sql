-- DuckDB

DROP TABLE IF EXISTS TestTrun

-- DuckDB

DROP TABLE IF EXISTS TestTrunDetail

-- DuckDB

CREATE TABLE TestTrunDetail
(
	ID         INTEGER,
	TestTrunID INTEGER NOT NULL,
	IsActive   BOOLEAN NOT NULL,

	PRIMARY KEY (ID)
)

-- DuckDB

CREATE TABLE TestTrun
(
	ID     INTEGER,
	Field1 DECIMAL NOT NULL,

	PRIMARY KEY (ID)
)

-- DuckDB

TRUNCATE TABLE TestTrun;

-- DuckDB

DROP TABLE TestTrun

-- DuckDB

DROP TABLE TestTrunDetail

