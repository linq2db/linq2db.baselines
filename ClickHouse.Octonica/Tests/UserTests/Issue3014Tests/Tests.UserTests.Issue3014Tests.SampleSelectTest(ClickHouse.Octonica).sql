﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table2_3014

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Table2_3014
(
	Id       Int32,
	ParentId Int32,
	IsTrue   Nullable(Bool)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Table2_3014
(
	Id,
	ParentId,
	IsTrue
)
VALUES
(1,0,true)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableStatus_3014

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TableStatus_3014
(
	StatusId   Int32,
	StatusName String,

	PRIMARY KEY (StatusId)
)
ENGINE = MergeTree()
ORDER BY StatusId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO TableStatus_3014
(
	StatusId,
	StatusName
)
VALUES
(1,'Sample')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	1
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id
FROM
	Table2_3014 t

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	1
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id
FROM
	Table2_3014 x
WHERE
	x.Id = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	1
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id
FROM
	Table2_3014 x
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	1
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Id
FROM
	Table2_3014 e

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableStatus_3014

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table2_3014

