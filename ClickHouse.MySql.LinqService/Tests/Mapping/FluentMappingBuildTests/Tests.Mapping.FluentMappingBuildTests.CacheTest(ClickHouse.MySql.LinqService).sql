BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Value    Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.ID,
	t.Value,
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Value    Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.ID,
	t.Value,
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Column   Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.ID,
	t.Column,
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Column   Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.ID,
	t.Column,
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS FluentTemp

