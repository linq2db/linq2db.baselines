BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	Id      Int32,
	Renamed Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TestTempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Renamed
FROM
	TempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

