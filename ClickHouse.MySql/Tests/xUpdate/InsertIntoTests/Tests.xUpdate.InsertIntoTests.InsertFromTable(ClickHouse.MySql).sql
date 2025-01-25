BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InsertTestClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InsertTestClass
(
	Id         Int32,
	Value      Int32,
	OtherValue Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InsertTestClass
(
	Value,
	OtherValue
)
VALUES
(1,100)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InsertTestClassDest

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InsertTestClassDest
(
	Id         Int32,
	Value      Int32,
	OtherValue Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InsertTestClassDest
(
	Id,
	Value,
	OtherValue
)
SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClassDest t1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InsertTestClassDest

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InsertTestClass

