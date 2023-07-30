BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InventoryResourceDTO
(
	Id                UUID,
	Status            Int32,
	ResourceID        UUID,
	ModifiedTimeStamp Nullable(DateTime64(7))
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK InventoryResourceDTO(Id, Status, ResourceID, ModifiedTimeStamp)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

