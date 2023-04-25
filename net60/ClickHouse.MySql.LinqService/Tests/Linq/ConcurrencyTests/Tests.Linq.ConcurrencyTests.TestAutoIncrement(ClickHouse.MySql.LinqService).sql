BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConcurrencyAutoIncrement

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ConcurrencyAutoIncrement
(
	Id    Int32,
	Stamp Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ConcurrencyAutoIncrement
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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
UPDATE
	Stamp = Stamp + toInt32(1),
	Value = 'value 1'
WHERE
	Id = toInt32(1) AND Stamp = toInt32(-10)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
UPDATE
	Stamp = Stamp + toInt32(1),
	Value = 'value 2'
WHERE
	Id = toInt32(1) AND Stamp = toInt32(-9)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
UPDATE
	Stamp = Stamp + toInt32(1),
	Value = 'value 3'
WHERE
	Id = toInt32(1) AND Stamp = toInt32(-9)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
DELETE WHERE
	Id = toInt32(1) AND Stamp = toInt32(-9)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
DELETE WHERE
	Id = toInt32(1) AND Stamp = toInt32(-8)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConcurrencyAutoIncrement

