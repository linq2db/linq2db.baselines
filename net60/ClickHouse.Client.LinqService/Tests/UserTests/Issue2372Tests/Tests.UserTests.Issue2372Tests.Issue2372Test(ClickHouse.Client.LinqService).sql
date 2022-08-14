BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InventoryResource

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InventoryResource

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InventoryResource
(
	Id     UUID,
	Status String,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InventoryResource
(
	Id,
	Status
)
VALUES
(
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	'Used'
)

