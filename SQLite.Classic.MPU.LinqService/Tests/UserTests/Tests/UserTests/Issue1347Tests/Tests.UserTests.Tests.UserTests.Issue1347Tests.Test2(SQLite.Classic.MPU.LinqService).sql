BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [GlobalTaskDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [GlobalTaskDTO]
(
	[Id]                        Guid NOT NULL,
	[ResourceID]                Guid NOT NULL,
	[StorageShelfSourceID]      Guid     NULL,
	[RPSourceID]                Guid     NULL,
	[StorageShelfDestinationID] Guid     NULL,
	[RPDestinationID]           Guid     NULL,
	[RPOrigDestinationID]       Guid     NULL,
	[OutfeedTransportOrderID]   Guid     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_GlobalTaskA]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WMS_GlobalTaskA]
(
	[Id]                        Guid NOT NULL,
	[ResourceID]                Guid NOT NULL,
	[StorageShelfSourceID]      Guid     NULL,
	[RPSourceID]                Guid     NULL,
	[StorageShelfDestinationID] Guid     NULL,
	[RPDestinationID]           Guid     NULL,
	[RPOrigDestinationID]       Guid     NULL,
	[OutfeedTransportOrderID]   Guid     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsResourcePointDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [StorageShelfDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [OutfeedTransportOrderDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [OutfeedTransportOrderDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_OutfeedTransportOrderA]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WMS_OutfeedTransportOrderA]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsLoadCarrierDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_LoadCarrierA]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WMS_LoadCarrierA]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_LoadCarrierA]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_OutfeedTransportOrderA]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [OutfeedTransportOrderDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_GlobalTaskA]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [GlobalTaskDTO]

