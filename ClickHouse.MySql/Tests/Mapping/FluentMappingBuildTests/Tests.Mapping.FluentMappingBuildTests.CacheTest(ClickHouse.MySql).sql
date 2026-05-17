-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       Int32,
	Value    Nullable(String),
	LastName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

INSERT INTO FluentTemp_Cache
(
	ID,
	Value,
	LastName
)
VALUES
(
	1,
	'John',
	'Doe'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t.ID,
	t.Value,
	t.LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FluentTemp_Cache

-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       Int32,
	Value    Nullable(String),
	LastName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

INSERT INTO FluentTemp_Cache
(
	ID,
	Value,
	LastName
)
VALUES
(
	1,
	'John',
	'Doe'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t.ID,
	t.Value,
	t.LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FluentTemp_Cache

-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       Int32,
	Column   Nullable(String),
	LastName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

INSERT INTO FluentTemp_Cache
(
	ID,
	Column,
	LastName
)
VALUES
(
	1,
	'John',
	'Doe'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t.ID,
	t.Column,
	t.LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FluentTemp_Cache

-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       Int32,
	Column   Nullable(String),
	LastName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

INSERT INTO FluentTemp_Cache
(
	ID,
	Column,
	LastName
)
VALUES
(
	1,
	'John',
	'Doe'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t.ID,
	t.Column,
	t.LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FluentTemp_Cache

