BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table2_3014

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Table2_3014
(
	Id       Int32,
	ParentId Int32,
	IsTrue   Nullable(Bool)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Table2_3014
(
	Id,
	ParentId,
	IsTrue
)
VALUES
(1,0,true)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableStatus_3014

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TableStatus_3014
(
	StatusId   Int32,
	StatusName String,

	PRIMARY KEY (StatusId)
)
ENGINE = MergeTree()
ORDER BY StatusId

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TableStatus_3014
(
	StatusId,
	StatusName
)
VALUES
(1,'Sample')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	1
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id
FROM
	Table2_3014 t

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	1
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id
FROM
	Table2_3014 x
WHERE
	x.Id = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	1
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id
FROM
	Table2_3014 x
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	1
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.Id
FROM
	Table2_3014 e

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableStatus_3014

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table2_3014

