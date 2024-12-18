BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[GlobalTaskDTO]', N'U') IS NOT NULL)
	DROP TABLE [GlobalTaskDTO]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[GlobalTaskDTO]', N'U') IS NULL)
	CREATE TABLE [GlobalTaskDTO]
	(
		[Id]                        UniqueIdentifier NOT NULL,
		[ResourceID]                UniqueIdentifier NOT NULL,
		[StorageShelfSourceID]      UniqueIdentifier     NULL,
		[RPSourceID]                UniqueIdentifier     NULL,
		[StorageShelfDestinationID] UniqueIdentifier     NULL,
		[RPDestinationID]           UniqueIdentifier     NULL,
		[RPOrigDestinationID]       UniqueIdentifier     NULL,
		[OutfeedTransportOrderID]   UniqueIdentifier     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WMS_GlobalTaskA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WMS_GlobalTaskA]', N'U') IS NULL)
	CREATE TABLE [WMS_GlobalTaskA]
	(
		[Id]                        UniqueIdentifier NOT NULL,
		[ResourceID]                UniqueIdentifier NOT NULL,
		[StorageShelfSourceID]      UniqueIdentifier     NULL,
		[RPSourceID]                UniqueIdentifier     NULL,
		[StorageShelfDestinationID] UniqueIdentifier     NULL,
		[RPDestinationID]           UniqueIdentifier     NULL,
		[RPOrigDestinationID]       UniqueIdentifier     NULL,
		[OutfeedTransportOrderID]   UniqueIdentifier     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WmsResourcePointDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WmsResourcePointDTO]', N'U') IS NULL)
	CREATE TABLE [WmsResourcePointDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NOT NULL)
	DROP TABLE [StorageShelfDTO]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NULL)
	CREATE TABLE [StorageShelfDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NOT NULL)
	DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NULL)
	CREATE TABLE [OutfeedTransportOrderDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WMS_OutfeedTransportOrderA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WMS_OutfeedTransportOrderA]', N'U') IS NULL)
	CREATE TABLE [WMS_OutfeedTransportOrderA]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NULL)
	CREATE TABLE [WmsLoadCarrierDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WMS_LoadCarrierA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_LoadCarrierA]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WMS_LoadCarrierA]', N'U') IS NULL)
	CREATE TABLE [WMS_LoadCarrierA]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t4].[Id],
	[t4].[ResourceID],
	[t4].[StorageShelfSourceID],
	[t4].[RPSourceID],
	[t4].[StorageShelfDestinationID],
	[t4].[RPDestinationID],
	[t4].[RPOrigDestinationID],
	[t4].[OutfeedTransportOrderID],
	[res_1].[Id],
	[source].[Id],
	[sourceShelf].[Id],
	[dest].[Id],
	[destShelf].[Id],
	[origdest].[Id],
	[outfeed].[Id]
FROM
	(
		SELECT
			[g_1].[Id],
			[g_1].[ResourceID],
			[g_1].[StorageShelfSourceID],
			[g_1].[RPSourceID],
			[g_1].[StorageShelfDestinationID],
			[g_1].[RPDestinationID],
			[g_1].[RPOrigDestinationID],
			[g_1].[OutfeedTransportOrderID]
		FROM
			[GlobalTaskDTO] [g_1]
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
	) [t4]
		LEFT JOIN [WmsResourcePointDTO] [source] ON [t4].[RPSourceID] = [source].[Id] AND [t4].[RPSourceID] IS NOT NULL
		LEFT JOIN [StorageShelfDTO] [sourceShelf] ON [t4].[StorageShelfSourceID] = [sourceShelf].[Id] AND [t4].[StorageShelfSourceID] IS NOT NULL
		LEFT JOIN [WmsResourcePointDTO] [dest] ON [t4].[RPDestinationID] = [dest].[Id] AND [t4].[RPDestinationID] IS NOT NULL
		LEFT JOIN [StorageShelfDTO] [destShelf] ON [t4].[StorageShelfDestinationID] = [destShelf].[Id] AND [t4].[StorageShelfDestinationID] IS NOT NULL
		LEFT JOIN [WmsResourcePointDTO] [origdest] ON [t4].[RPOrigDestinationID] = [origdest].[Id] AND [t4].[RPOrigDestinationID] IS NOT NULL
		LEFT JOIN (
			SELECT
				[res].[Id]
			FROM
				[WmsLoadCarrierDTO] [res]
			UNION
			SELECT
				[t2].[Id]
			FROM
				[WMS_LoadCarrierA] [t2]
		) [res_1] ON [t4].[ResourceID] = [res_1].[Id]
		LEFT JOIN (
			SELECT
				[outfeed1].[Id]
			FROM
				[OutfeedTransportOrderDTO] [outfeed1]
			UNION
			SELECT
				[t3].[Id]
			FROM
				[WMS_OutfeedTransportOrderA] [t3]
		) [outfeed] ON [t4].[OutfeedTransportOrderID] = [outfeed].[Id] AND [t4].[OutfeedTransportOrderID] IS NOT NULL

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WMS_LoadCarrierA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_LoadCarrierA]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WMS_OutfeedTransportOrderA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NOT NULL)
	DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NOT NULL)
	DROP TABLE [StorageShelfDTO]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WmsResourcePointDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WMS_GlobalTaskA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[GlobalTaskDTO]', N'U') IS NOT NULL)
	DROP TABLE [GlobalTaskDTO]

