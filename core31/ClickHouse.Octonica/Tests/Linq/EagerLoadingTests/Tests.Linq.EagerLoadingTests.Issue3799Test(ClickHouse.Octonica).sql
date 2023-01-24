BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Test3799Item

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Test3799Item
(
	Id       Int32,
	ParentId Nullable(Int32),
	Name     String,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(toInt32(1),NULL,'root'),
(toInt32(2),toInt32(1),'child 1'),
(toInt32(3),toInt32(2),'child 1.1'),
(toInt32(4),toInt32(2),'child 1.2'),
(toInt32(5),toInt32(1),'child 2'),
(toInt32(6),toInt32(5),'child 2.1'),
(toInt32(7),toInt32(5),'child 2.1')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.Id,
	key_data_result.Id_1,
	detail_1.Name
FROM
	(
		SELECT DISTINCT
			detail.Id as Id,
			item_1.Id as Id_1
		FROM
			Test3799Item item_1
				INNER JOIN Test3799Item detail ON item_1.Id = detail.ParentId
	) key_data_result
		INNER JOIN Test3799Item detail_1 ON key_data_result.Id = detail_1.ParentId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	item_1.Id,
	detail.Name,
	detail.Id
FROM
	Test3799Item item_1
		INNER JOIN Test3799Item detail ON item_1.Id = detail.ParentId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	item_1.Name,
	item_1.Id
FROM
	Test3799Item item_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Test3799Item

