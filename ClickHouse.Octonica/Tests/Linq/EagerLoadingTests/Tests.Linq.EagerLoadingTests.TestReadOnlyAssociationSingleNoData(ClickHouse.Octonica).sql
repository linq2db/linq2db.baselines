BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityA

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EntityA
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityB

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EntityB
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityC

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EntityC
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityD

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EntityD
(
	Id Int32,
	FK Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityD

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityC

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityB

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityA

