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

SELECT
	t.ID,
	t."Value",
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp

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

SELECT
	t.ID,
	t."Value",
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp

-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       INTEGER,
	"Column" VARCHAR(20),
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
	"Column",
	LastName
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($Name AS VARCHAR),
	CAST($LastName AS VARCHAR)
)

-- DuckDB

SELECT
	t.ID,
	t."Column",
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp

-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       INTEGER,
	"Column" VARCHAR(20),
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
	"Column",
	LastName
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($Name AS VARCHAR),
	CAST($LastName AS VARCHAR)
)

-- DuckDB

SELECT
	t.ID,
	t."Column",
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp

