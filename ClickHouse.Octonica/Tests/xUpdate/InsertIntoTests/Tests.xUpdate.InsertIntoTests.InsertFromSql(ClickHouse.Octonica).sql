BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InsertTestClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS InsertTestClass
(
	Id         Int32,
	Value      Int32,
	OtherValue Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertTestClass
(
	Value,
	OtherValue
)
VALUES
(1,100)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InsertTestClassDest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS InsertTestClassDest
(
	Id         Int32,
	Value      Int32,
	OtherValue Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertTestClassDest
(
	Id,
	Value
)
SELECT
	x.Id + 1,
	x.Value
FROM
	(
		select * from InsertTestClass
	) x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClassDest t1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InsertTestClassDest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InsertTestClass

