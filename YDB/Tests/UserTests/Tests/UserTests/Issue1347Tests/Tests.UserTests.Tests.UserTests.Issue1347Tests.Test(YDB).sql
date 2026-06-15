-- YDB Ydb

SELECT
	tp12.Id as Id,
	tp12.ResourceID as ResourceID,
	tp12.StorageShelfSourceID as StorageShelfSourceID,
	tp12.RPSourceID as RPSourceID,
	tp12.StorageShelfDestinationID as StorageShelfDestinationID,
	tp12.RPDestinationID as RPDestinationID,
	tp12.RPOrigDestinationID as RPOrigDestinationID,
	tp12.OutfeedTransportOrderID as OutfeedTransportOrderID,
	res_1.Id as Id_1,
	source.Id as Id_2,
	sourceShelf.Id as Id_3,
	dest.Id as Id_4,
	destShelf.Id as Id_5,
	origdest.Id as Id_6,
	outfeed.Id as Id_7
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
	) tp12
		LEFT JOIN WmsResourcePointDTO source ON tp12.RPSourceID = source.Id
		LEFT JOIN StorageShelfDTO sourceShelf ON tp12.StorageShelfSourceID = sourceShelf.Id
		LEFT JOIN WmsResourcePointDTO dest ON tp12.RPDestinationID = dest.Id
		LEFT JOIN StorageShelfDTO destShelf ON tp12.StorageShelfDestinationID = destShelf.Id
		LEFT JOIN WmsResourcePointDTO origdest ON tp12.RPOrigDestinationID = origdest.Id
		LEFT JOIN (
			SELECT
				res.Id as Id
			FROM
				WmsLoadCarrierDTO res
			UNION
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
			UNION
			SELECT
				t3.Id as Id
			FROM
				WMS_OutfeedTransportOrderA t3
		) outfeed ON tp12.OutfeedTransportOrderID = outfeed.Id

