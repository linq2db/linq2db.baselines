-- DuckDB

DROP TABLE IF EXISTS FluentTemp_Merge

-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp_Merge
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

INSERT INTO FluentTemp_Merge
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

MERGE INTO FluentTemp_Merge Target
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

DROP TABLE IF EXISTS FluentTemp_Merge

