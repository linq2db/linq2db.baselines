BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO TestTempTable
(
	Id,
	Value
)
VALUES
(
	1,
	'value'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS TempTable
(
	Id      Int32,
	Renamed Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO TempTable
(
	Id,
	Renamed
)
SELECT
	t1.Id,
	t1.Value
FROM
	TestTempTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO TestTempTable
(
	Id,
	Value
)
VALUES
(
	2,
	'value 2'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO TempTable
(
	Id,
	Renamed
)
VALUES
(
	2,
	'renamed 2'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Value
FROM
	TestTempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Renamed
FROM
	TempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable

