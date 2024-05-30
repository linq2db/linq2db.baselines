﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConcurrencyFiltered

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ConcurrencyFiltered
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 1'
WHERE
	Id = 2 AND Id = 1 AND Stamp = -10

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ConcurrencyFiltered
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 2'
WHERE
	Id = 1 AND Id = 1 AND Stamp = -10

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ConcurrencyFiltered
DELETE WHERE
	Id = 2 AND Id = 1 AND Stamp = -9

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ConcurrencyFiltered
DELETE WHERE
	Id = 1 AND Id = 1 AND Stamp = -9

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConcurrencyFiltered

