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
	m_1.Id,
	d.Id,
	d.FK
FROM
	(
		SELECT DISTINCT
			a_ObjectBOptional.Id as Id
		FROM
			EntityA t1
				LEFT JOIN EntityB a_ObjectBOptional ON t1.FK = a_ObjectBOptional.Id AND t1.FK IS NOT NULL
	) m_1
		INNER JOIN EntityD d ON m_1.Id = d.FK AND m_1.Id IS NOT NULL AND d.FK IS NOT NULL OR m_1.Id IS NULL AND d.FK IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.FK,
	a_ObjectBOptional.Id,
	a_ObjectBOptional.FK,
	a_ObjectCRequired.Id,
	a_ObjectCRequired.FK,
	a_ObjectBOptional.Id
FROM
	EntityA t1
		LEFT JOIN EntityB a_ObjectBOptional ON t1.FK = a_ObjectBOptional.Id AND t1.FK IS NOT NULL
		LEFT JOIN EntityC a_ObjectCRequired ON a_ObjectBOptional.FK = a_ObjectCRequired.Id AND a_ObjectBOptional.FK IS NOT NULL

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

