BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [GlobalTaskDTO]

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

DROP TABLE IF EXISTS [WMS_GlobalTaskA]

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NULL)
	CREATE TABLE [WmsLoadCarrierDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [WMS_LoadCarrierA]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[WMS_LoadCarrierA]', N'U') IS NULL)
	CREATE TABLE [WMS_LoadCarrierA]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2016

SELECT
	[t3].[Id],
	[t3].[ResourceID],
	[t3].[StorageShelfSourceID],
	[t3].[RPSourceID],
	[t3].[StorageShelfDestinationID],
	[t3].[RPDestinationID],
	[t3].[RPOrigDestinationID],
	[t3].[OutfeedTransportOrderID],
	[res_1].[Id]
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
	) [t3]
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
		) [res_1] ON [t3].[ResourceID] = [res_1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [WMS_LoadCarrierA]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [WMS_GlobalTaskA]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [GlobalTaskDTO]

