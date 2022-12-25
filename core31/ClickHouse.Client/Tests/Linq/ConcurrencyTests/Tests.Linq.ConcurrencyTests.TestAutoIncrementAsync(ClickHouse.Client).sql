BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcurrencyTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ConcurrencyTable
(
	Id    Int32,
	Stamp Int32,
	Value Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

INSERT INTO ConcurrencyTable
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
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyTable
UPDATE
	Stamp = Stamp + toInt32(1),
	Value = 'value 1'
WHERE
	Id = toInt32(1) AND Stamp = toInt32(-10)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyTable
UPDATE
	Stamp = Stamp + toInt32(1),
	Value = 'value 2'
WHERE
	Id = toInt32(1) AND Stamp = toInt32(-9)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyTable
UPDATE
	Stamp = Stamp + toInt32(1),
	Value = 'value 3'
WHERE
	Id = toInt32(1) AND Stamp = toInt32(-9)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyTable
DELETE WHERE
	Id = toInt32(1) AND Stamp = toInt32(-9)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyTable
DELETE WHERE
	Id = toInt32(1) AND Stamp = toInt32(-8)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcurrencyTable

