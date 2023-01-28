BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestTempTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TestTempTable
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TestTempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestTempTable

