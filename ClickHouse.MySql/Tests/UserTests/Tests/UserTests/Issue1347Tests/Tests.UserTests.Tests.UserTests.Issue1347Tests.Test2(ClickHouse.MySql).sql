-- ClickHouse.MySql ClickHouse

SELECT
	t4.Id,
	t4.ResourceID,
	t4.StorageShelfSourceID,
	t4.RPSourceID,
	t4.StorageShelfDestinationID,
	t4.RPDestinationID,
	t4.RPOrigDestinationID,
	t4.OutfeedTransportOrderID,
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
	) t4
		LEFT JOIN WmsResourcePointDTO source ON t4.RPSourceID = source.Id
		LEFT JOIN StorageShelfDTO sourceShelf ON t4.StorageShelfSourceID = sourceShelf.Id
		LEFT JOIN WmsResourcePointDTO dest ON t4.RPDestinationID = dest.Id
		LEFT JOIN StorageShelfDTO destShelf ON t4.StorageShelfDestinationID = destShelf.Id
		LEFT JOIN WmsResourcePointDTO origdest ON t4.RPOrigDestinationID = origdest.Id
		LEFT JOIN (
			SELECT
				res.Id as Id
			FROM
				WmsLoadCarrierDTO res
			UNION DISTINCT
			SELECT
				t2.Id as Id
			FROM
				WMS_LoadCarrierA t2
		) res_1 ON t4.ResourceID = res_1.Id
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
		) outfeed ON t4.OutfeedTransportOrderID = outfeed.Id

