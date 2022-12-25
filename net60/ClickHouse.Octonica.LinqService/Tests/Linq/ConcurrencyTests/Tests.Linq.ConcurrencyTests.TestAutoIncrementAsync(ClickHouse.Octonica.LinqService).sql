BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConcurrencyTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConcurrencyTable

