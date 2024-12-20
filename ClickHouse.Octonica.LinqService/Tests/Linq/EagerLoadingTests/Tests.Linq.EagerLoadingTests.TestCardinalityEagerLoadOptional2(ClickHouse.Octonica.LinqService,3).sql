﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityMA

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EntityMA
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMA
(
	Id,
	FK
)
VALUES
(
	10,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMA
(
	Id,
	FK
)
VALUES
(
	11,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMA
(
	Id,
	FK
)
VALUES
(
	12,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMA
(
	Id,
	FK
)
VALUES
(
	13,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityMB

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EntityMB
(
	Id  Int32,
	FK  Nullable(Int32),
	FKD Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(
	20,
	10,
	40
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(
	21,
	11,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(
	22,
	11,
	40
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(
	23,
	19,
	49
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(
	24,
	19,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(
	25,
	NULL,
	49
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(
	26,
	NULL,
	40
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(
	27,
	19,
	41
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(
	28,
	10,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityMC

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EntityMC
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMC
(
	Id,
	FK
)
VALUES
(
	30,
	20
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMC
(
	Id,
	FK
)
VALUES
(
	31,
	24
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMC
(
	Id,
	FK
)
VALUES
(
	32,
	21
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMC
(
	Id,
	FK
)
VALUES
(
	33,
	21
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMC
(
	Id,
	FK
)
VALUES
(
	34,
	23
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMC
(
	Id,
	FK
)
VALUES
(
	35,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMC
(
	Id,
	FK
)
VALUES
(
	36,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMC
(
	Id,
	FK
)
VALUES
(
	37,
	29
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityMD

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EntityMD
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMD
(
	Id,
	FK
)
VALUES
(
	40,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMD
(
	Id,
	FK
)
VALUES
(
	41,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EntityMD
(
	Id,
	FK
)
VALUES
(
	42,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	m_1.Id_1,
	d_1.Id,
	d_1.FK
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			t2.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					t1.Id as Id
				FROM
					EntityMA t1
			) t2
				INNER JOIN EntityMB d ON t2.Id = d.FK
	) m_1
		INNER JOIN EntityMC d_1 ON m_1.Id = d_1.FK

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.FK,
	d.FKD,
	d.Id,
	a_ObjectD.Id,
	a_ObjectD.FK
FROM
	EntityMA m_1
		INNER JOIN EntityMB d ON m_1.Id = d.FK
		LEFT JOIN EntityMD a_ObjectD ON d.FKD = a_ObjectD.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.FK,
	t1.Id
FROM
	EntityMA t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityMD

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityMC

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityMB

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityMA

