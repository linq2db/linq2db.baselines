BeforeExecute
-- SqlCe

DROP TABLE [GlobalTaskDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [GlobalTaskDTO]
(
	[Id]                        UNIQUEIDENTIFIER NOT NULL,
	[ResourceID]                UNIQUEIDENTIFIER NOT NULL,
	[StorageShelfSourceID]      UNIQUEIDENTIFIER     NULL,
	[RPSourceID]                UNIQUEIDENTIFIER     NULL,
	[StorageShelfDestinationID] UNIQUEIDENTIFIER     NULL,
	[RPDestinationID]           UNIQUEIDENTIFIER     NULL,
	[RPOrigDestinationID]       UNIQUEIDENTIFIER     NULL,
	[OutfeedTransportOrderID]   UNIQUEIDENTIFIER     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- SqlCe

CREATE TABLE [WMS_GlobalTaskA]
(
	[Id]                        UNIQUEIDENTIFIER NOT NULL,
	[ResourceID]                UNIQUEIDENTIFIER NOT NULL,
	[StorageShelfSourceID]      UNIQUEIDENTIFIER     NULL,
	[RPSourceID]                UNIQUEIDENTIFIER     NULL,
	[StorageShelfDestinationID] UNIQUEIDENTIFIER     NULL,
	[RPDestinationID]           UNIQUEIDENTIFIER     NULL,
	[RPOrigDestinationID]       UNIQUEIDENTIFIER     NULL,
	[OutfeedTransportOrderID]   UNIQUEIDENTIFIER     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [WmsResourcePointDTO]
(
	[Id] UNIQUEIDENTIFIER NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [StorageShelfDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [StorageShelfDTO]
(
	[Id] UNIQUEIDENTIFIER NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [OutfeedTransportOrderDTO]
(
	[Id] UNIQUEIDENTIFIER NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- SqlCe

CREATE TABLE [WMS_OutfeedTransportOrderA]
(
	[Id] UNIQUEIDENTIFIER NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [WmsLoadCarrierDTO]
(
	[Id] UNIQUEIDENTIFIER NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [WMS_LoadCarrierA]

BeforeExecute
-- SqlCe

CREATE TABLE [WMS_LoadCarrierA]
(
	[Id] UNIQUEIDENTIFIER NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	[t4].[Id],
	[t4].[ResourceID],
	[t4].[StorageShelfSourceID],
	[t4].[RPSourceID],
	[t4].[StorageShelfDestinationID],
	[t4].[RPDestinationID],
	[t4].[RPOrigDestinationID],
	[t4].[OutfeedTransportOrderID],
	[res_1].[Id] as [Id_1],
	[source].[Id] as [Id_2],
	[sourceShelf].[Id] as [Id_3],
	[dest].[Id] as [Id_4],
	[destShelf].[Id] as [Id_5],
	[origdest].[Id] as [Id_6],
	[outfeed].[Id] as [Id_7]
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
-- SqlCe

DROP TABLE [WMS_LoadCarrierA]

BeforeExecute
-- SqlCe

DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SqlCe

DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- SqlCe

DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- SqlCe

DROP TABLE [StorageShelfDTO]

BeforeExecute
-- SqlCe

DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- SqlCe

DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- SqlCe

DROP TABLE [GlobalTaskDTO]

