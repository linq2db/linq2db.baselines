BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO ConcurrencyAutoIncrement
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
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyAutoIncrement
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 1'
WHERE
	Id = 1 AND Stamp = -10

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyAutoIncrement
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 2'
WHERE
	Id = 1 AND Stamp = -9

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyAutoIncrement
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 3'
WHERE
	Id = 1 AND Stamp = -9

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyAutoIncrement
DELETE WHERE
	Id = 1 AND Stamp = -9

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	ConcurrencyAutoIncrement
DELETE WHERE
	Id = 1 AND Stamp = -8

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

