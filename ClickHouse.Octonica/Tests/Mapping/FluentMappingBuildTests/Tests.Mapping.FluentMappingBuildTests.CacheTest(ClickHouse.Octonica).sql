-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       Int32,
	Name     Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

INSERT INTO FluentTemp_Cache
(
	ID,
	Name,
	LastName
)
VALUES
(
	1,
	'John',
	'Doe'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID,
	t.Name,
	t.LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS FluentTemp_Cache

-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       Int32,
	Name     Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

INSERT INTO FluentTemp_Cache
(
	ID,
	Name,
	LastName
)
VALUES
(
	1,
	'John',
	'Doe'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID,
	t.Name,
	t.LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS FluentTemp_Cache

-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       Int32,
	Name     Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

INSERT INTO FluentTemp_Cache
(
	ID,
	Name,
	LastName
)
VALUES
(
	1,
	'John',
	'Doe'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID,
	t.Name,
	t.LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS FluentTemp_Cache

-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_Cache
(
	ID       Int32,
	Name     Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

INSERT INTO FluentTemp_Cache
(
	ID,
	Name,
	LastName
)
VALUES
(
	1,
	'John',
	'Doe'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID,
	t.Name,
	t.LastName
FROM
	FluentTemp_Cache t
WHERE
	t.ID = 1

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS FluentTemp_Cache

