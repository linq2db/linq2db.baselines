-- YDB Ydb

CREATE TABLE FluentTemp_Cache
(
	ID       Int32,
	`Value`  Text,
	LastName Text,

	PRIMARY KEY (ID)
)

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1
DECLARE $Name Text(4) -- String
SET     $Name = 'John'u
DECLARE $LastName Text(3) -- String
SET     $LastName = 'Doe'u

INSERT INTO FluentTemp_Cache
(
	ID,
	`Value`,
	LastName
)
VALUES
(
	$ID,
	$Name,
	$LastName
)

-- YDB Ydb

SELECT
	t.ID as ID,
	t.`Value` as Name,
	t.LastName as LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- YDB Ydb

DROP TABLE IF EXISTS FluentTemp_Cache

-- YDB Ydb

CREATE TABLE FluentTemp_Cache
(
	ID       Int32,
	`Value`  Text,
	LastName Text,

	PRIMARY KEY (ID)
)

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1
DECLARE $Name Text(4) -- String
SET     $Name = 'John'u
DECLARE $LastName Text(3) -- String
SET     $LastName = 'Doe'u

INSERT INTO FluentTemp_Cache
(
	ID,
	`Value`,
	LastName
)
VALUES
(
	$ID,
	$Name,
	$LastName
)

-- YDB Ydb

SELECT
	t.ID as ID,
	t.`Value` as Name,
	t.LastName as LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- YDB Ydb

DROP TABLE IF EXISTS FluentTemp_Cache

-- YDB Ydb

CREATE TABLE FluentTemp_Cache
(
	ID       Int32,
	`Column` Text,
	LastName Text,

	PRIMARY KEY (ID)
)

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1
DECLARE $Name Text(4) -- String
SET     $Name = 'John'u
DECLARE $LastName Text(3) -- String
SET     $LastName = 'Doe'u

INSERT INTO FluentTemp_Cache
(
	ID,
	`Column`,
	LastName
)
VALUES
(
	$ID,
	$Name,
	$LastName
)

-- YDB Ydb

SELECT
	t.ID as ID,
	t.`Column` as Name,
	t.LastName as LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- YDB Ydb

DROP TABLE IF EXISTS FluentTemp_Cache

-- YDB Ydb

CREATE TABLE FluentTemp_Cache
(
	ID       Int32,
	`Column` Text,
	LastName Text,

	PRIMARY KEY (ID)
)

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1
DECLARE $Name Text(4) -- String
SET     $Name = 'John'u
DECLARE $LastName Text(3) -- String
SET     $LastName = 'Doe'u

INSERT INTO FluentTemp_Cache
(
	ID,
	`Column`,
	LastName
)
VALUES
(
	$ID,
	$Name,
	$LastName
)

-- YDB Ydb

SELECT
	t.ID as ID,
	t.`Column` as Name,
	t.LastName as LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- YDB Ydb

DROP TABLE IF EXISTS FluentTemp_Cache

