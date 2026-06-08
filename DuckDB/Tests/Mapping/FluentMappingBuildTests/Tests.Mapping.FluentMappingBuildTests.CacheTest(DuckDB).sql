-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
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

INSERT INTO FluentTemp_Cache
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
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp_Cache

-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
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

INSERT INTO FluentTemp_Cache
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
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp_Cache

-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       INTEGER,
	"Column" VARCHAR,
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

INSERT INTO FluentTemp_Cache
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
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp_Cache

-- DuckDB

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       INTEGER,
	"Column" VARCHAR,
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

INSERT INTO FluentTemp_Cache
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
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- DuckDB

DROP TABLE IF EXISTS FluentTemp_Cache

