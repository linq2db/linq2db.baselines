-- ClickHouse.Driver ClickHouse

SELECT
	t4.Id,
	t4.ResourceID,
	t4.StorageShelfSourceID,
	t4.RPSourceID,
	t4.StorageShelfDestinationID,
	t4.RPDestinationID,
	t4.RPOrigDestinationID,
	t4.OutfeedTransportOrderID,
	res_1.Id
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
	) t4
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
		) res_1 ON t4.ResourceID = res_1.Id

