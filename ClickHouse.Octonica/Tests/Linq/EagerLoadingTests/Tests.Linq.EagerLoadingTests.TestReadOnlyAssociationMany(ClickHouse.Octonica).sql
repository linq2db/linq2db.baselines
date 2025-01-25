BeforeExecute
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
(10,NULL),
(11,NULL),
(12,NULL),
(13,NULL)

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
(30,20),
(31,24),
(32,21),
(33,21),
(34,23),
(35,NULL),
(36,NULL),
(37,29)

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
(40,NULL),
(41,NULL),
(42,NULL)

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

