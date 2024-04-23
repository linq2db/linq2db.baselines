﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InsertTestClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InsertTestClass
(
	Id         Int32,
	Value      Int32,
	OtherValue Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InsertTestClass
(
	Value,
	OtherValue
)
VALUES
(1,100)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InsertTestClassDest

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InsertTestClassDest
(
	Id         Int32,
	Value      Int32,
	OtherValue Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InsertTestClassDest
(
	Id,
	Value,
	OtherValue
)
WITH CTE_1 AS
(
	SELECT
		t1.Id,
		t1.Value,
		t1.OtherValue
	FROM
		InsertTestClass t1
)
SELECT
	t2.Id,
	t2.Value,
	t2.OtherValue
FROM
	CTE_1 t2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClassDest t1
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InsertTestClassDest

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InsertTestClass

