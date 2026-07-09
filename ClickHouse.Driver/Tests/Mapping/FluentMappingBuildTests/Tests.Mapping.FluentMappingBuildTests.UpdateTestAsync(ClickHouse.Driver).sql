-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_UpdateAsync
(
	ID       Int32,
	Name     Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

-- ClickHouse.Driver ClickHouse

INSERT INTO FluentTemp_UpdateAsync
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

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	FluentTemp_UpdateAsync
UPDATE
	Name = 'John II',
	LastName = 'Dory'
WHERE
	ID = 1

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS FluentTemp_UpdateAsync

