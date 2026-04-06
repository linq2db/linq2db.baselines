-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       INTEGER,
	"Value"  VARCHAR(20),
	LastName VARCHAR(20),

	PRIMARY KEY (ID)
)

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'John'
DECLARE $LastName NVarChar(3) -- String
SET     $LastName = 'Doe'

INSERT INTO FluentTemp
(
	ID,
	"Value",
	LastName
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($Name AS VARCHAR),
	CAST($LastName AS VARCHAR)
)

-- DuckDB
DECLARE $Name NVarChar(7) -- String
SET     $Name = 'John II'
DECLARE $LastName NVarChar(4) -- String
SET     $LastName = 'Dory'

UPDATE
	FluentTemp
SET
	"Value" = CAST($Name AS VARCHAR),
	LastName = CAST($LastName AS VARCHAR)
WHERE
	FluentTemp.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp

