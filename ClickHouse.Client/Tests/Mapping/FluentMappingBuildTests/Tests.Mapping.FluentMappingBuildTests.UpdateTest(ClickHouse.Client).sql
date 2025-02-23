BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Value    Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

ALTER TABLE
	FluentTemp
UPDATE
	Value = 'John II',
	LastName = 'Dory'
WHERE
	ID = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS FluentTemp

