BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Item

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Item
(
	Id   Int32,
	Text Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ItemValue

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ItemValue
(
	Id     Int32,
	ItemId Int32,
	Value  Decimal128(10)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ItemValue

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Item

