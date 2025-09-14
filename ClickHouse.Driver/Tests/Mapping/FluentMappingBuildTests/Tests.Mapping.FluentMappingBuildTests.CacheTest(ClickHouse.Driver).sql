BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Value    Nullable(String),
	LastName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO FluentTemp
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

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.ID,
	t.Value,
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Value    Nullable(String),
	LastName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO FluentTemp
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

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.ID,
	t.Value,
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Column   Nullable(String),
	LastName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO FluentTemp
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

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.ID,
	t.Column,
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Column   Nullable(String),
	LastName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO FluentTemp
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

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.ID,
	t.Column,
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS FluentTemp

