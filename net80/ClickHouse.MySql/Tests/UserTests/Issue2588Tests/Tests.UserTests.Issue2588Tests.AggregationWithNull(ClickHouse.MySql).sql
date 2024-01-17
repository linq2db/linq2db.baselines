BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TestClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	maxOrNull(x.Value)
FROM
	TestClass x
WHERE
	x.Id = toInt32(0)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	maxOrNull(x.Value)
FROM
	TestClass x
WHERE
	x.Id = toInt32(0)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	maxOrNull(x.Value)
FROM
	TestClass x
WHERE
	x.Id = toInt32(0)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	maxOrNull(x.Value)
FROM
	TestClass x
WHERE
	x.Id = toInt32(0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestClass

