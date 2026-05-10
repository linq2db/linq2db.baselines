-- DuckDB

DELETE FROM
	TestIdentity t1

-- DuckDB

INSERT INTO TestIdentity DEFAULT VALUES
RETURNING 
	ID

-- DuckDB

DELETE FROM
	TestIdentity t1

