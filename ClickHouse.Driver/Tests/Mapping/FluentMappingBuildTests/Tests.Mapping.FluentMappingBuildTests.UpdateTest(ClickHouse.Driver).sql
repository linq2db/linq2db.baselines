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

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	FluentTemp
UPDATE
	Value = 'John II',
	LastName = 'Dory'
WHERE
	ID = 1

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS FluentTemp

