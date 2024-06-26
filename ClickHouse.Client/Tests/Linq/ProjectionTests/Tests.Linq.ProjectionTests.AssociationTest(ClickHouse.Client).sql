﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SomeEntity

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SomeEntity
(
	Id      Int32,
	OtherId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SomeEntity
(
	Id,
	OtherId
)
VALUES
(1,3)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SomeOtherEntity

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SomeOtherEntity
(
	Id       Int32,
	Name     Nullable(String),
	IsActual Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SomeOtherEntity
(
	Id,
	Name,
	IsActual
)
VALUES
(2,NULL,true)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.OtherId,
	a_Other.IsActual
FROM
	SomeEntity t
		LEFT JOIN SomeOtherEntity a_Other ON t.OtherId = a_Other.Id
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SomeOtherEntity

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SomeEntity

