-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp_Update
(
	ID       Int32,
	Value    Nullable(String),
	LastName Nullable(String),

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

INSERT INTO FluentTemp_Update
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

ALTER TABLE
	FluentTemp_Update
UPDATE
	Value = 'John II',
	LastName = 'Dory'
WHERE
	ID = 1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FluentTemp_Update

