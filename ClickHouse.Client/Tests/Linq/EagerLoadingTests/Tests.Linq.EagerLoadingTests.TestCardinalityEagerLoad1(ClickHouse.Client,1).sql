BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityA

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EntityA
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(10,20),
(11,21),
(12,22),
(13,20),
(14,NULL),
(15,NULL),
(16,25),
(17,26),
(18,29)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityB

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EntityB
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(20,30),
(21,31),
(22,30),
(23,31),
(24,31),
(25,NULL),
(26,NULL),
(27,NULL),
(28,39)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityC

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EntityC
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO EntityC
(
	Id,
	FK
)
VALUES
(30,NULL),
(31,NULL),
(32,NULL),
(33,NULL),
(34,NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityD

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EntityD
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(40,20),
(41,21),
(42,21),
(43,21),
(44,25),
(45,26),
(46,26),
(47,NULL),
(48,NULL),
(401,29)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.FK,
	a_ObjectB.Id,
	a_ObjectB.FK,
	a_ObjectC.Id,
	a_ObjectC.FK
FROM
	EntityA t1
		INNER JOIN EntityB a_ObjectB ON t1.FK = a_ObjectB.Id
		LEFT JOIN EntityC a_ObjectC ON a_ObjectB.FK = a_ObjectC.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityD

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityC

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityB

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityA

