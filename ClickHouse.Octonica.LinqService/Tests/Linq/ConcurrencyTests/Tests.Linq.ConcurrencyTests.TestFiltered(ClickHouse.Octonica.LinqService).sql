BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConcurrencyFiltered

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ConcurrencyFiltered
(
	Id    Int32,
	Stamp Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO ConcurrencyFiltered
(
	Id,
	Stamp,
	Value
)
VALUES
(
	toInt32(1),
	toInt32(-10),
	'initial'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyFiltered
UPDATE
	Stamp = Stamp + toInt32(1),
	Value = 'value 1'
WHERE
	Id = toInt32(2) AND Id = toInt32(1) AND Stamp = toInt32(-10)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyFiltered
UPDATE
	Stamp = Stamp + toInt32(1),
	Value = 'value 2'
WHERE
	Id = toInt32(1) AND Id = toInt32(1) AND Stamp = toInt32(-10)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyFiltered
DELETE WHERE
	Id = toInt32(2) AND Id = toInt32(1) AND Stamp = toInt32(-9)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyFiltered
DELETE WHERE
	Id = toInt32(1) AND Id = toInt32(1) AND Stamp = toInt32(-9)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConcurrencyFiltered

