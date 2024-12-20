﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[GlobalTaskDTO]', N'U') IS NOT NULL)
	DROP TABLE [GlobalTaskDTO]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WMS_GlobalTaskA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WmsResourcePointDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WmsResourcePointDTO]', N'U') IS NULL)
	CREATE TABLE [WmsResourcePointDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NOT NULL)
	DROP TABLE [StorageShelfDTO]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NULL)
	CREATE TABLE [StorageShelfDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NOT NULL)
	DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NULL)
	CREATE TABLE [OutfeedTransportOrderDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WMS_OutfeedTransportOrderA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WMS_OutfeedTransportOrderA]', N'U') IS NULL)
	CREATE TABLE [WMS_OutfeedTransportOrderA]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NULL)
	CREATE TABLE [WmsLoadCarrierDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WMS_ResourceA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_ResourceA]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WMS_ResourceA]', N'U') IS NULL)
	CREATE TABLE [WMS_ResourceA]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[tp12].[Id],
	[tp12].[ResourceID],
	[tp12].[StorageShelfSourceID],
	[tp12].[RPSourceID],
	[tp12].[StorageShelfDestinationID],
	[tp12].[RPDestinationID],
	[tp12].[RPOrigDestinationID],
	[tp12].[OutfeedTransportOrderID],
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
				[res].[Id]
			FROM
				[WmsLoadCarrierDTO] [res]
			UNION
			SELECT
				[t2].[Id]
			FROM
				[WMS_ResourceA] [t2]
		) [res_1] ON [tp12].[ResourceID] = [res_1].[Id]
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
		) [outfeed] ON [tp12].[OutfeedTransportOrderID] = [outfeed].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WMS_ResourceA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_ResourceA]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WMS_OutfeedTransportOrderA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[OutfeedTransportOrderDTO]', N'U') IS NOT NULL)
	DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NOT NULL)
	DROP TABLE [StorageShelfDTO]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WmsResourcePointDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[WMS_GlobalTaskA]', N'U') IS NOT NULL)
	DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[GlobalTaskDTO]', N'U') IS NOT NULL)
	DROP TABLE [GlobalTaskDTO]

