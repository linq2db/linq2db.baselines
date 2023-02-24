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
(toInt32(1),toInt32(0),true)

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
(toInt32(1),'Sample')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt32(1)
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
	toInt32(1)
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	cp.Id
FROM
	Table2_3014 cp
WHERE
	cp.Id = toInt32(0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt32(1)
FROM
	TableStatus_3014 x

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id
FROM
	Table2_3014 t
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt32(1)
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

DROP TABLE IF EXISTS TableStatus_3014

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table2_3014

