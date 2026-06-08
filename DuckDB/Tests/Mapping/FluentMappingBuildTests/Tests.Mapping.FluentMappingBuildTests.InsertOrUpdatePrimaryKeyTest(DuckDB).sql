-- DuckDB

DROP TABLE IF EXISTS FluentTemp_InsertOrUpdate

-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp_InsertOrUpdate
(
	ID   INTEGER,
	Name VARCHAR,

	PRIMARY KEY (ID)
)

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1
DECLARE $Name NVarChar(20) -- String
SET     $Name = 'John'

INSERT INTO FluentTemp_InsertOrUpdate
(
	ID,
	Name
)
VALUES
(
	$ID,
	$Name
)

-- DuckDB

INSERT INTO FluentTemp_InsertOrUpdate AS t1
(
	ID,
	Name
)
VALUES
(
	1,
	'John II'
)
ON CONFLICT (ID) DO UPDATE SET
	ID = t1.ID,
	Name = t1.Name

-- DuckDB

DROP TABLE IF EXISTS FluentTemp_InsertOrUpdate

