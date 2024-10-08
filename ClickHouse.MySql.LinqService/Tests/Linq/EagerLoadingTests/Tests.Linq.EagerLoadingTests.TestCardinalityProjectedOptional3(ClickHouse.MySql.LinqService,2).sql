BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityA

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS EntityA
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(
	10,
	20
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(
	11,
	21
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(
	12,
	22
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(
	13,
	20
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(
	14,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(
	15,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(
	16,
	25
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(
	17,
	26
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityA
(
	Id,
	FK
)
VALUES
(
	18,
	29
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityB

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS EntityB
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(
	20,
	30
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(
	21,
	31
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(
	22,
	30
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(
	23,
	31
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(
	24,
	31
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(
	25,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(
	26,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(
	27,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityB
(
	Id,
	FK
)
VALUES
(
	28,
	39
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityC

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS EntityC
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityC
(
	Id,
	FK
)
VALUES
(
	30,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityC
(
	Id,
	FK
)
VALUES
(
	31,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityC
(
	Id,
	FK
)
VALUES
(
	32,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityC
(
	Id,
	FK
)
VALUES
(
	33,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityC
(
	Id,
	FK
)
VALUES
(
	34,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityD

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS EntityD
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	40,
	20
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	41,
	21
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	42,
	21
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	43,
	21
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	44,
	25
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	45,
	26
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	46,
	26
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	47,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	48,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityD
(
	Id,
	FK
)
VALUES
(
	401,
	29
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.FK
FROM
	(
		SELECT DISTINCT
			a_ObjectBOptional.Id as Id
		FROM
			EntityA e
				LEFT JOIN EntityB a_ObjectBOptional ON e.FK = a_ObjectBOptional.Id
	) m_1
		INNER JOIN EntityD d ON m_1.Id = d.FK OR m_1.Id IS NULL AND d.FK IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.Id,
	a_ObjectBOptional.Id,
	a_ObjectBOptional.FK,
	a_ObjectBOptional.Id
FROM
	EntityA e
		LEFT JOIN EntityB a_ObjectBOptional ON e.FK = a_ObjectBOptional.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityD

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityC

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityB

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityA

