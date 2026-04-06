-- DuckDB

DROP TABLE IF EXISTS FluentTemp

-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID   INTEGER,
	Name VARCHAR(20),

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
	CAST($ID AS INTEGER),
	CAST($Name AS VARCHAR)
)

-- DuckDB

MERGE INTO FluentTemp Target
USING (VALUES
	(1,'John II')
) Source
(
	ID,
	Name
)
ON (Target.ID = Source.ID)

WHEN MATCHED THEN
UPDATE
SET
	Name = Source.Name

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	Name
)
VALUES
(
	Source.ID,
	Source.Name
)

-- DuckDB

DROP TABLE IF EXISTS FluentTemp

