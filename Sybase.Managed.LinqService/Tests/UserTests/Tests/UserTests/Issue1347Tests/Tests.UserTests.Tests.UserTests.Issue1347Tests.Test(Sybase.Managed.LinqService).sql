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

IF (OBJECT_ID(N'WMS_ResourceA') IS NOT NULL)
	DROP TABLE [WMS_ResourceA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_ResourceA') IS NULL)
	EXECUTE('
		CREATE TABLE [WMS_ResourceA]
		(
			[Id] VARCHAR(36) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
		LEFT JOIN [WmsResourcePointDTO] [source] ON [tp12].[RPSourceID] = [source].[Id] AND [tp12].[RPSourceID] IS NOT NULL
		LEFT JOIN [StorageShelfDTO] [sourceShelf] ON [tp12].[StorageShelfSourceID] = [sourceShelf].[Id] AND [tp12].[StorageShelfSourceID] IS NOT NULL
		LEFT JOIN [WmsResourcePointDTO] [dest] ON [tp12].[RPDestinationID] = [dest].[Id] AND [tp12].[RPDestinationID] IS NOT NULL
		LEFT JOIN [StorageShelfDTO] [destShelf] ON [tp12].[StorageShelfDestinationID] = [destShelf].[Id] AND [tp12].[StorageShelfDestinationID] IS NOT NULL
		LEFT JOIN [WmsResourcePointDTO] [origdest] ON [tp12].[RPOrigDestinationID] = [origdest].[Id] AND [tp12].[RPOrigDestinationID] IS NOT NULL
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
		) [outfeed] ON [tp12].[OutfeedTransportOrderID] = [outfeed].[Id] AND [tp12].[OutfeedTransportOrderID] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WMS_ResourceA') IS NOT NULL)
	DROP TABLE [WMS_ResourceA]

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

