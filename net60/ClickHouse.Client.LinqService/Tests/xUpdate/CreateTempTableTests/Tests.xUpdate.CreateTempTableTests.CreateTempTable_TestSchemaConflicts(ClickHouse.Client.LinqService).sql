BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestTempTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TestTempTable
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TestTempTable
(
	Id,
	Value
)
VALUES
(
	toInt32(1),
	'value'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TempTable
(
	Id,
	Value
)
SELECT
	t1.Id,
	t1.Value
FROM
	TestTempTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TestTempTable
(
	Id,
	Value
)
VALUES
(
	toInt32(2),
	'value 2'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TempTable
(
	Id,
	Value
)
VALUES
(
	toInt32(2),
	'renamed 2'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TestTempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestTempTable

