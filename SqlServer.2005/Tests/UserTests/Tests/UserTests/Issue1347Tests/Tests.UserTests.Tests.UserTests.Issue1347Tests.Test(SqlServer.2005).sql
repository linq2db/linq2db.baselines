BeforeExecute
-- SqlServer.2005

SELECT
	[tp12].[Id],
	[tp12].[ResourceID],
	[tp12].[StorageShelfSourceID],
	[tp12].[RPSourceID],
	[tp12].[StorageShelfDestinationID],
	[tp12].[RPDestinationID],
	[tp12].[RPOrigDestinationID],
	[tp12].[OutfeedTransportOrderID],
	[res_2].[Id],
	[source].[Id],
	[sourceShelf].[Id],
	[dest].[Id],
	[destShelf].[Id],
	[origdest].[Id],
	[outfeed_1].[Id]
FROM
	(
		SELECT
			[tp0].[Id],
			[tp0].[ResourceID],
			[tp0].[StorageShelfSourceID],
			[tp0].[RPSourceID],
			[tp0].[StorageShelfDestinationID],
			[tp0].[RPDestinationID],
			[tp0].[RPOrigDestinationID],
			[tp0].[OutfeedTransportOrderID]
		FROM
			[GlobalTaskDTO] [tp0]
		UNION
		SELECT
			[t1].[Id],
			[t1].[ResourceID],
			[t1].[StorageShelfSourceID],
			[t1].[RPSourceID],
			[t1].[StorageShelfDestinationID],
			[t1].[RPDestinationID],
			[t1].[RPOrigDestinationID],
			[t1].[OutfeedTransportOrderID]
		FROM
			[WMS_GlobalTaskA] [t1]
	) [tp12]
		LEFT JOIN [WmsResourcePointDTO] [source] ON [tp12].[RPSourceID] = [source].[Id]
		LEFT JOIN [StorageShelfDTO] [sourceShelf] ON [tp12].[StorageShelfSourceID] = [sourceShelf].[Id]
		LEFT JOIN [WmsResourcePointDTO] [dest] ON [tp12].[RPDestinationID] = [dest].[Id]
		LEFT JOIN [StorageShelfDTO] [destShelf] ON [tp12].[StorageShelfDestinationID] = [destShelf].[Id]
		LEFT JOIN [WmsResourcePointDTO] [origdest] ON [tp12].[RPOrigDestinationID] = [origdest].[Id]
		LEFT JOIN (
			SELECT
				[res_1].[Id]
			FROM
				(
					SELECT
						[res].[Id]
					FROM
						[WmsLoadCarrierDTO] [res]
					UNION
					SELECT
						[t2].[Id]
					FROM
						[WMS_ResourceA] [t2]
				) [res_1]
		) [res_2] ON [tp12].[ResourceID] = [res_2].[Id]
		LEFT JOIN (
			SELECT
				[outfeed].[Id]
			FROM
				(
					SELECT
						[outfeed1].[Id]
					FROM
						[OutfeedTransportOrderDTO] [outfeed1]
					UNION
					SELECT
						[t3].[Id]
					FROM
						[WMS_OutfeedTransportOrderA] [t3]
				) [outfeed]
		) [outfeed_1] ON [tp12].[OutfeedTransportOrderID] = [outfeed_1].[Id]

