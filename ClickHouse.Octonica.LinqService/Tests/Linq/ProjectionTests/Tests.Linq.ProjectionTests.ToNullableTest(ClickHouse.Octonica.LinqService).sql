BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SomeEntity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SomeEntity
(
	Id      Int32,
	OtherId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SomeEntity
(
	Id,
	OtherId
)
VALUES
(
	toInt32(1),
	toInt32(3)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SomeOtherEntity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SomeOtherEntity
(
	Id       Int32,
	Name     Nullable(String),
	IsActual Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SomeOtherEntity
(
	Id,
	Name,
	IsActual
)
VALUES
(
	toInt32(2),
	NULL,
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.OtherId,
	t2.IsActual
FROM
	SomeEntity t
		LEFT JOIN SomeOtherEntity t2 ON t2.Id = t.OtherId
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SomeOtherEntity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SomeEntity

