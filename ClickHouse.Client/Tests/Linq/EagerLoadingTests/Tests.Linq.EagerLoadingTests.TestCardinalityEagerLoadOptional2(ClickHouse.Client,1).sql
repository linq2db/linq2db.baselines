BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityMA

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EntityMA
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO EntityMA
(
	Id,
	FK
)
VALUES
(10,NULL),
(11,NULL),
(12,NULL),
(13,NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityMB

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO EntityMB
(
	Id,
	FK,
	FKD
)
VALUES
(20,10,40),
(21,11,NULL),
(22,11,40),
(23,19,49),
(24,19,NULL),
(25,NULL,49),
(26,NULL,40),
(27,19,41),
(28,10,NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityMC

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EntityMC
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO EntityMC
(
	Id,
	FK
)
VALUES
(30,20),
(31,24),
(32,21),
(33,21),
(34,23),
(35,NULL),
(36,NULL),
(37,29)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityMD

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EntityMD
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO EntityMD
(
	Id,
	FK
)
VALUES
(40,NULL),
(41,NULL),
(42,NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.FK,
	d.FKD
FROM
	EntityMA m_1
		INNER JOIN EntityMB d ON m_1.Id = d.FK

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.FK
FROM
	EntityMA t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityMD

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityMC

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityMB

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityMA

