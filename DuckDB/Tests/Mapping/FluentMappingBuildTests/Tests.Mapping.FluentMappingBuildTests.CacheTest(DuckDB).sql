-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       INTEGER,
	"Value"  VARCHAR,
	LastName VARCHAR,

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
	$ID,
	$Name,
	$LastName
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
	"Value"  VARCHAR,
	LastName VARCHAR,

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
	$ID,
	$Name,
	$LastName
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
	"Column" VARCHAR,
	LastName VARCHAR,

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
	$ID,
	$Name,
	$LastName
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
	"Column" VARCHAR,
	LastName VARCHAR,

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
	$ID,
	$Name,
	$LastName
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

