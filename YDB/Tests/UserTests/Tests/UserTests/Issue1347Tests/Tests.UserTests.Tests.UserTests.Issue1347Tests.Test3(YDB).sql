-- YDB Ydb

SELECT
	t2.Id as Id,
	t2.ResourceID as ResourceID,
	t2.StorageShelfSourceID as StorageShelfSourceID,
	t2.RPSourceID as RPSourceID,
	t2.StorageShelfDestinationID as StorageShelfDestinationID,
	t2.RPDestinationID as RPDestinationID,
	t2.RPOrigDestinationID as RPOrigDestinationID,
	t2.OutfeedTransportOrderID as OutfeedTransportOrderID,
	source.Id as Id_1,
	sourceShelf.Id as Id_2,
	dest.Id as Id_3,
	destShelf.Id as Id_4,
	origdest.Id as Id_5
FROM
	(
		SELECT
			g_1.Id as Id,
			g_1.ResourceID as ResourceID,
			g_1.StorageShelfSourceID as StorageShelfSourceID,
			g_1.RPSourceID as RPSourceID,
			g_1.StorageShelfDestinationID as StorageShelfDestinationID,
			g_1.RPDestinationID as RPDestinationID,
			g_1.RPOrigDestinationID as RPOrigDestinationID,
			g_1.OutfeedTransportOrderID as OutfeedTransportOrderID
		FROM
			GlobalTaskDTO g_1
		UNION
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
	) t2
		LEFT JOIN WmsResourcePointDTO source ON t2.RPSourceID = source.Id
		LEFT JOIN StorageShelfDTO sourceShelf ON t2.StorageShelfSourceID = sourceShelf.Id
		LEFT JOIN WmsResourcePointDTO dest ON t2.RPDestinationID = dest.Id
		LEFT JOIN StorageShelfDTO destShelf ON t2.StorageShelfDestinationID = destShelf.Id
		LEFT JOIN WmsResourcePointDTO origdest ON t2.RPOrigDestinationID = origdest.Id

