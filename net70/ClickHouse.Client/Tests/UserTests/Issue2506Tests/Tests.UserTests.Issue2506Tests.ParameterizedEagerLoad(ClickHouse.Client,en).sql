BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Item

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Item
(
	Id   Int32,
	Name String,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Item
(
	Id,
	Name
)
VALUES
(toInt32(1),'Item 1'),
(toInt32(2),'Item 2')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ItemText

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ItemText
(
	ItemId Int32,
	Lang   String,
	Text   String,

	 PRIMARY KEY (ItemId, Lang)
)
ENGINE = MergeTree()
ORDER BY (ItemId, Lang)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ItemText
(
	ItemId,
	Lang,
	Text
)
VALUES
(toInt32(1),'de','Item 1 german text'),
(toInt32(1),'en','Item 1 english text'),
(toInt32(2),'de','Item 2 german text'),
(toInt32(2),'en','Item 2 english text')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	item_1.Id,
	detail.Lang,
	detail.Text
FROM
	Item item_1
		INNER JOIN ItemText detail ON item_1.Id = detail.ItemId AND detail.Lang = 'en'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	item_1.Name,
	item_1.Id
FROM
	Item item_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ItemText

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Item

