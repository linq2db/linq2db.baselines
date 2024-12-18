BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS GlobalTaskDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WMS_GlobalTaskA

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsResourcePointDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WmsResourcePointDTO
(
	Id UUID
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS StorageShelfDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS StorageShelfDTO
(
	Id UUID
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OutfeedTransportOrderDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS OutfeedTransportOrderDTO
(
	Id UUID
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WMS_OutfeedTransportOrderA

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WMS_OutfeedTransportOrderA
(
	Id UUID
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WmsLoadCarrierDTO
(
	Id UUID
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WMS_ResourceA

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WMS_ResourceA
(
	Id UUID
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	tp12.Id,
	tp12.ResourceID,
	tp12.StorageShelfSourceID,
	tp12.RPSourceID,
	tp12.StorageShelfDestinationID,
	tp12.RPDestinationID,
	tp12.RPOrigDestinationID,
	tp12.OutfeedTransportOrderID,
	res_1.Id,
	source.Id,
	sourceShelf.Id,
	dest.Id,
	destShelf.Id,
	origdest.Id,
	outfeed.Id
FROM
	(
		SELECT
			tp0.Id as Id,
			tp0.ResourceID as ResourceID,
			tp0.StorageShelfSourceID as StorageShelfSourceID,
			tp0.RPSourceID as RPSourceID,
			tp0.StorageShelfDestinationID as StorageShelfDestinationID,
			tp0.RPDestinationID as RPDestinationID,
			tp0.RPOrigDestinationID as RPOrigDestinationID,
			tp0.OutfeedTransportOrderID as OutfeedTransportOrderID
		FROM
			GlobalTaskDTO tp0
		UNION DISTINCT
		SELECT
			t1.Id as Id,
			t1.ResourceID as ResourceID,
			t1.StorageShelfSourceID as StorageShelfSourceID,
			t1.RPSourceID as RPSourceID,
			t1.StorageShelfDestinationID as StorageShelfDestinationID,
			t1.RPDestinationID as RPDestinationID,
			t1.RPOrigDestinationID as RPOrigDestinationID,
			t1.OutfeedTransportOrderID as OutfeedTransportOrderID
		FROM
			WMS_GlobalTaskA t1
	) tp12
		LEFT JOIN WmsResourcePointDTO source ON tp12.RPSourceID = source.Id AND tp12.RPSourceID IS NOT NULL
		LEFT JOIN StorageShelfDTO sourceShelf ON tp12.StorageShelfSourceID = sourceShelf.Id AND tp12.StorageShelfSourceID IS NOT NULL
		LEFT JOIN WmsResourcePointDTO dest ON tp12.RPDestinationID = dest.Id AND tp12.RPDestinationID IS NOT NULL
		LEFT JOIN StorageShelfDTO destShelf ON tp12.StorageShelfDestinationID = destShelf.Id AND tp12.StorageShelfDestinationID IS NOT NULL
		LEFT JOIN WmsResourcePointDTO origdest ON tp12.RPOrigDestinationID = origdest.Id AND tp12.RPOrigDestinationID IS NOT NULL
		LEFT JOIN (
			SELECT
				res.Id as Id
			FROM
				WmsLoadCarrierDTO res
			UNION DISTINCT
			SELECT
				t2.Id as Id
			FROM
				WMS_ResourceA t2
		) res_1 ON tp12.ResourceID = res_1.Id
		LEFT JOIN (
			SELECT
				outfeed1.Id as Id
			FROM
				OutfeedTransportOrderDTO outfeed1
			UNION DISTINCT
			SELECT
				t3.Id as Id
			FROM
				WMS_OutfeedTransportOrderA t3
		) outfeed ON tp12.OutfeedTransportOrderID = outfeed.Id AND tp12.OutfeedTransportOrderID IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WMS_ResourceA

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WMS_OutfeedTransportOrderA

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OutfeedTransportOrderDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS StorageShelfDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsResourcePointDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WMS_GlobalTaskA

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS GlobalTaskDTO

