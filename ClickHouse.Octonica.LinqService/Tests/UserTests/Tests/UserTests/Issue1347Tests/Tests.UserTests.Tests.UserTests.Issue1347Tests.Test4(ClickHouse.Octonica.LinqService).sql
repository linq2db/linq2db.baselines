BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS GlobalTaskDTO

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS GlobalTaskDTO
(
	Id                        UUID,
	ResourceID                UUID,
	StorageShelfSourceID      Nullable(UUID),
	RPSourceID                Nullable(UUID),
	StorageShelfDestinationID Nullable(UUID),
	RPDestinationID           Nullable(UUID),
	RPOrigDestinationID       Nullable(UUID),
	OutfeedTransportOrderID   Nullable(UUID)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WMS_GlobalTaskA

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS WMS_GlobalTaskA
(
	Id                        UUID,
	ResourceID                UUID,
	StorageShelfSourceID      Nullable(UUID),
	RPSourceID                Nullable(UUID),
	StorageShelfDestinationID Nullable(UUID),
	RPDestinationID           Nullable(UUID),
	RPOrigDestinationID       Nullable(UUID),
	OutfeedTransportOrderID   Nullable(UUID)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.ResourceID,
	t1.StorageShelfSourceID,
	t1.RPSourceID,
	t1.StorageShelfDestinationID,
	t1.RPDestinationID,
	t1.RPOrigDestinationID,
	t1.OutfeedTransportOrderID
FROM
	GlobalTaskDTO t1
UNION DISTINCT
SELECT
	t2.Id as Id,
	t2.ResourceID as ResourceID,
	t2.StorageShelfSourceID as StorageShelfSourceID,
	t2.RPSourceID as RPSourceID,
	t2.StorageShelfDestinationID as StorageShelfDestinationID,
	t2.RPDestinationID as RPDestinationID,
	t2.RPOrigDestinationID as RPOrigDestinationID,
	t2.OutfeedTransportOrderID as OutfeedTransportOrderID
FROM
	WMS_GlobalTaskA t2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WMS_GlobalTaskA

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS GlobalTaskDTO

