BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SomeEntity

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SomeEntity
(
	Id      Int32,
	OtherId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SomeEntity
(
	Id,
	OtherId
)
VALUES
(
	1,
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SomeOtherEntity

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SomeOtherEntity
(
	Id       Int32,
	Name     Nullable(String),
	IsActual Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SomeOtherEntity
(
	Id,
	Name,
	IsActual
)
VALUES
(
	2,
	NULL,
	true
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.OtherId,
	t2.IsActual
FROM
	SomeEntity t1
		LEFT JOIN SomeOtherEntity t2 ON t2.Id = t1.OtherId AND t1.OtherId IS NOT NULL
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SomeOtherEntity

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SomeEntity

