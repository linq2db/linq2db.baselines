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
(
	10,
	20
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
(
	20,
	30
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
(
	30,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
(
	40,
	20
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	e.Id,
	a_ObjectBOptional.Id,
	a_ObjectBOptional.FK,
	a_ObjectBOptional.Id,
	a_ObjectC.Id,
	a_ObjectC.FK
FROM
	EntityA e
		LEFT JOIN EntityB a_ObjectBOptional ON e.FK = a_ObjectBOptional.Id
		LEFT JOIN EntityC a_ObjectC ON a_ObjectBOptional.FK = a_ObjectC.Id

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

