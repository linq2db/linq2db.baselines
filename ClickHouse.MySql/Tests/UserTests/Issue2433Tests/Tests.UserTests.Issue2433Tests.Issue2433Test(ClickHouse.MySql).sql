BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InventoryResourceDTO
(
	Id                UUID,
	Status            Int32,
	ResourceID        UUID,
	ModifiedTimeStamp Nullable(DateTime64(7))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InventoryResourceDTO
(
	Id,
	Status,
	ResourceID,
	ModifiedTimeStamp
)
VALUES
(toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),40,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toDateTime64('2020-02-29 15:54:55.1231234', 7))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

