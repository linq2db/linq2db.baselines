BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Item

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Item
(
	Id   Int32,
	Text Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ItemValue

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ItemValue
(
	Id     Int32,
	ItemId Int32,
	Value  Decimal128(10)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	d.Value
FROM
	Item m_1
		INNER JOIN ItemValue d ON m_1.Id = d.ItemId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Text
FROM
	Item x

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ItemValue

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Item

