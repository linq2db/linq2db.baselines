-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 1'
WHERE
	Id = 1 AND Stamp = -10

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 2'
WHERE
	Id = 1 AND Stamp = -9

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
UPDATE
	Stamp = Stamp + 1,
	Value = 'value 3'
WHERE
	Id = 1 AND Stamp = -9

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
DELETE WHERE
	Id = 1 AND Stamp = -9

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyAutoIncrement
DELETE WHERE
	Id = 1 AND Stamp = -8

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyAutoIncrement t1

