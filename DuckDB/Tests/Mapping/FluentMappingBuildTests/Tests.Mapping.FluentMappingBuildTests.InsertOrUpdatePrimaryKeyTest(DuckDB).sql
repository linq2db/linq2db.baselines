-- DuckDB

DROP TABLE IF EXISTS FluentTemp

-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID   INTEGER,
	Name VARCHAR,

	PRIMARY KEY (ID)
)

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'John'

INSERT INTO FluentTemp
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

INSERT INTO FluentTemp AS t1
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

DROP TABLE IF EXISTS FluentTemp

