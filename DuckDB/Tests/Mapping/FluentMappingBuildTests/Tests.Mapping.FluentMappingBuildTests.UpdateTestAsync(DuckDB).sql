-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp_UpdateAsync
(
	ID       INTEGER,
	"Value"  VARCHAR,
	LastName VARCHAR,

	PRIMARY KEY (ID)
)

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1
DECLARE $Name NVarChar(20) -- String
SET     $Name = 'John'
DECLARE $LastName NVarChar(20) -- String
SET     $LastName = 'Doe'

INSERT INTO FluentTemp_UpdateAsync
(
	ID,
	"Value",
	LastName
)
VALUES
(
	$ID,
	$Name,
	$LastName
)

-- DuckDB
DECLARE $Name NVarChar(20) -- String
SET     $Name = 'John II'
DECLARE $LastName NVarChar(20) -- String
SET     $LastName = 'Dory'

UPDATE
	FluentTemp_UpdateAsync
SET
	"Value" = $Name,
	LastName = $LastName
WHERE
	FluentTemp_UpdateAsync.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp_UpdateAsync

