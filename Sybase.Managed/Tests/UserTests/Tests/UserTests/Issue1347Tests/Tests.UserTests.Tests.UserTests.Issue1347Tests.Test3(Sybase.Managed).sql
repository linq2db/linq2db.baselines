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

SELECT
	[t2].[Id],
	[t2].[ResourceID],
	[t2].[StorageShelfSourceID],
	[t2].[RPSourceID],
	[t2].[StorageShelfDestinationID],
	[t2].[RPDestinationID],
	[t2].[RPOrigDestinationID],
	[t2].[OutfeedTransportOrderID],
	[source].[Id],
	[sourceShelf].[Id],
	[dest].[Id],
	[destShelf].[Id],
	[origdest].[Id]
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
	) [t2]
		LEFT JOIN [WmsResourcePointDTO] [source] ON [t2].[RPSourceID] = [source].[Id] AND [t2].[RPSourceID] IS NOT NULL
		LEFT JOIN [StorageShelfDTO] [sourceShelf] ON [t2].[StorageShelfSourceID] = [sourceShelf].[Id] AND [t2].[StorageShelfSourceID] IS NOT NULL
		LEFT JOIN [WmsResourcePointDTO] [dest] ON [t2].[RPDestinationID] = [dest].[Id] AND [t2].[RPDestinationID] IS NOT NULL
		LEFT JOIN [StorageShelfDTO] [destShelf] ON [t2].[StorageShelfDestinationID] = [destShelf].[Id] AND [t2].[StorageShelfDestinationID] IS NOT NULL
		LEFT JOIN [WmsResourcePointDTO] [origdest] ON [t2].[RPOrigDestinationID] = [origdest].[Id] AND [t2].[RPOrigDestinationID] IS NOT NULL

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

