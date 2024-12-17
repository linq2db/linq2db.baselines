BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [GlobalTaskDTO]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [WMS_GlobalTaskA]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

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
	[GlobalTaskDTO] [t1]
UNION
SELECT
	[t2].[Id],
	[t2].[ResourceID],
	[t2].[StorageShelfSourceID],
	[t2].[RPSourceID],
	[t2].[StorageShelfDestinationID],
	[t2].[RPDestinationID],
	[t2].[RPOrigDestinationID],
	[t2].[OutfeedTransportOrderID]
FROM
	[WMS_GlobalTaskA] [t2]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [WMS_GlobalTaskA]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [GlobalTaskDTO]

