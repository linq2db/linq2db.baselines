BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS InventoryResourceDTO
(
	Id                UUID,
	Status            Int32,
	ResourceID        UUID,
	ModifiedTimeStamp Nullable(DateTime64(7))
)
ENGINE = Memory()

BeforeExecute
INSERT INTO InventoryResourceDTO(Id, Status, ResourceID, ModifiedTimeStamp) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InventoryResourceDTO

