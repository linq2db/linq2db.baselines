BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'GlobalTaskDTO') IS NOT NULL)
	DROP TABLE [GlobalTaskDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'GlobalTaskDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [GlobalTaskDTO]
		(
			[Id]                        VARCHAR(36) NOT NULL,
			[ResourceID]                VARCHAR(36) NOT NULL,
			[StorageShelfSourceID]      VARCHAR(36)     NULL,
			[RPSourceID]                VARCHAR(36)     NULL,
			[StorageShelfDestinationID] VARCHAR(36)     NULL,
			[RPDestinationID]           VARCHAR(36)     NULL,
			[RPOrigDestinationID]       VARCHAR(36)     NULL,
			[OutfeedTransportOrderID]   VARCHAR(36)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_GlobalTaskA') IS NOT NULL)
	DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_GlobalTaskA') IS NULL)
	EXECUTE('
		CREATE TABLE [WMS_GlobalTaskA]
		(
			[Id]                        VARCHAR(36) NOT NULL,
			[ResourceID]                VARCHAR(36) NOT NULL,
			[StorageShelfSourceID]      VARCHAR(36)     NULL,
			[RPSourceID]                VARCHAR(36)     NULL,
			[StorageShelfDestinationID] VARCHAR(36)     NULL,
			[RPDestinationID]           VARCHAR(36)     NULL,
			[RPOrigDestinationID]       VARCHAR(36)     NULL,
			[OutfeedTransportOrderID]   VARCHAR(36)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WmsResourcePointDTO') IS NOT NULL)
	DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WmsResourcePointDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [WmsResourcePointDTO]
		(
			[Id] VARCHAR(36) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StorageShelfDTO') IS NOT NULL)
	DROP TABLE [StorageShelfDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StorageShelfDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [StorageShelfDTO]
		(
			[Id] VARCHAR(36) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OutfeedTransportOrderDTO') IS NOT NULL)
	DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OutfeedTransportOrderDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [OutfeedTransportOrderDTO]
		(
			[Id] VARCHAR(36) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_OutfeedTransportOrderA') IS NOT NULL)
	DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_OutfeedTransportOrderA') IS NULL)
	EXECUTE('
		CREATE TABLE [WMS_OutfeedTransportOrderA]
		(
			[Id] VARCHAR(36) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WmsLoadCarrierDTO') IS NOT NULL)
	DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WmsLoadCarrierDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [WmsLoadCarrierDTO]
		(
			[Id] VARCHAR(36) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_LoadCarrierA') IS NOT NULL)
	DROP TABLE [WMS_LoadCarrierA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_LoadCarrierA') IS NULL)
	EXECUTE('
		CREATE TABLE [WMS_LoadCarrierA]
		(
			[Id] VARCHAR(36) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_LoadCarrierA') IS NOT NULL)
	DROP TABLE [WMS_LoadCarrierA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WmsLoadCarrierDTO') IS NOT NULL)
	DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_OutfeedTransportOrderA') IS NOT NULL)
	DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OutfeedTransportOrderDTO') IS NOT NULL)
	DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StorageShelfDTO') IS NOT NULL)
	DROP TABLE [StorageShelfDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WmsResourcePointDTO') IS NOT NULL)
	DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_GlobalTaskA') IS NOT NULL)
	DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'GlobalTaskDTO') IS NOT NULL)
	DROP TABLE [GlobalTaskDTO]

