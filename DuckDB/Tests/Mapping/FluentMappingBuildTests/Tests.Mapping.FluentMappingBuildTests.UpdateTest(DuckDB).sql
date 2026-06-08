-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp_Update
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

INSERT INTO FluentTemp_Update
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
	FluentTemp_Update
SET
	"Value" = $Name,
	LastName = $LastName
WHERE
	FluentTemp_Update.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp_Update

