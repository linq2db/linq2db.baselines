-- ClickHouse.Driver ClickHouse

SELECT
	t3.Id,
	t3.ResourceID,
	t3.StorageShelfSourceID,
	t3.RPSourceID,
	t3.StorageShelfDestinationID,
	t3.RPDestinationID,
	t3.RPOrigDestinationID,
	t3.OutfeedTransportOrderID,
	source.Id,
	sourceShelf.Id,
	dest.Id,
	destShelf.Id,
	origdest.Id
FROM
	(
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
	) t3
		LEFT JOIN WmsResourcePointDTO source ON t3.RPSourceID = source.Id
		LEFT JOIN StorageShelfDTO sourceShelf ON t3.StorageShelfSourceID = sourceShelf.Id
		LEFT JOIN WmsResourcePointDTO dest ON t3.RPDestinationID = dest.Id
		LEFT JOIN StorageShelfDTO destShelf ON t3.StorageShelfDestinationID = destShelf.Id
		LEFT JOIN WmsResourcePointDTO origdest ON t3.RPOrigDestinationID = origdest.Id

