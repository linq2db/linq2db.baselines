-- ClickHouse.MySql ClickHouse

SELECT
	t3.Id,
	t3.ResourceID,
	t3.StorageShelfSourceID,
	t3.RPSourceID,
	t3.StorageShelfDestinationID,
	t3.RPDestinationID,
	t3.RPOrigDestinationID,
	t3.OutfeedTransportOrderID,
	res_1.Id
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
	) t3
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
		) res_1 ON t3.ResourceID = res_1.Id

