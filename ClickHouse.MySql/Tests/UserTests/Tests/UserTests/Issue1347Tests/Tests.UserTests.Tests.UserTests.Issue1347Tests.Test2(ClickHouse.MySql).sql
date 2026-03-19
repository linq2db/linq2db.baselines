-- ClickHouse.MySql ClickHouse

SELECT
	t5.Id,
	t5.ResourceID,
	t5.StorageShelfSourceID,
	t5.RPSourceID,
	t5.StorageShelfDestinationID,
	t5.RPDestinationID,
	t5.RPOrigDestinationID,
	t5.OutfeedTransportOrderID,
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
	) t5
		LEFT JOIN WmsResourcePointDTO source ON t5.RPSourceID = source.Id
		LEFT JOIN StorageShelfDTO sourceShelf ON t5.StorageShelfSourceID = sourceShelf.Id
		LEFT JOIN WmsResourcePointDTO dest ON t5.RPDestinationID = dest.Id
		LEFT JOIN StorageShelfDTO destShelf ON t5.StorageShelfDestinationID = destShelf.Id
		LEFT JOIN WmsResourcePointDTO origdest ON t5.RPOrigDestinationID = origdest.Id
		LEFT JOIN (
			SELECT
				res.Id as Id
			FROM
				WmsLoadCarrierDTO res
			UNION DISTINCT
			SELECT
				t3.Id as Id
			FROM
				WMS_LoadCarrierA t3
		) res_1 ON t5.ResourceID = res_1.Id
		LEFT JOIN (
			SELECT
				outfeed1.Id as Id
			FROM
				OutfeedTransportOrderDTO outfeed1
			UNION DISTINCT
			SELECT
				t4.Id as Id
			FROM
				WMS_OutfeedTransportOrderA t4
		) outfeed ON t5.OutfeedTransportOrderID = outfeed.Id

