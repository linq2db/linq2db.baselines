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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_LoadCarrierA') IS NOT NULL)
	DROP TABLE [WMS_LoadCarrierA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WmsLoadCarrierDTO') IS NOT NULL)
	DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_GlobalTaskA') IS NOT NULL)
	DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'GlobalTaskDTO') IS NOT NULL)
	DROP TABLE [GlobalTaskDTO]

