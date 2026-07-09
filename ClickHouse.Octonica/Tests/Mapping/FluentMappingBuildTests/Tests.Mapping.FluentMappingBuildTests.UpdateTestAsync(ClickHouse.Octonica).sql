-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_UpdateAsync
(
	ID       Int32,
	Name     Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	FluentTemp_UpdateAsync
UPDATE
	Name = 'John II',
	LastName = 'Dory'
WHERE
	ID = 1

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS FluentTemp_UpdateAsync

