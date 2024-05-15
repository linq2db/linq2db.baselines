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

