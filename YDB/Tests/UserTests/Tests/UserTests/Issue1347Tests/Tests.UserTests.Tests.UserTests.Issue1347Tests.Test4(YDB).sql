-- YDB Ydb

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
UNION
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

