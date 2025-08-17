BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int32,
	Value    Nullable(String),
	LastName Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	FluentTemp
UPDATE
	Value = 'John II',
	LastName = 'Dory'
WHERE
	ID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS FluentTemp

