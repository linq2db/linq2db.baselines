BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicParent

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DynamicParent
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicChild

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DynamicChild
(
	ID       Int32,
	ParentID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicChild

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicParent

