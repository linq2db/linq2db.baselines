﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcurrencyFiltered

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO ConcurrencyFiltered
(
	Id,
	Stamp,
	Value
)
VALUES
(
	1,
	-10,
	'initial'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	ConcurrencyFiltered
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 1'
WHERE
	Id = 2 AND Id = 1 AND Stamp = -10

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	ConcurrencyFiltered
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 2'
WHERE
	Id = 1 AND Id = 1 AND Stamp = -10

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	ConcurrencyFiltered
DELETE WHERE
	Id = 2 AND Id = 1 AND Stamp = -9

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	ConcurrencyFiltered
DELETE WHERE
	Id = 1 AND Id = 1 AND Stamp = -9

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcurrencyFiltered

