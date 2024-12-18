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

SELECT
	[t2].[Id],
	[t2].[ResourceID],
	[t2].[StorageShelfSourceID],
	[t2].[RPSourceID],
	[t2].[StorageShelfDestinationID],
	[t2].[RPDestinationID],
	[t2].[RPOrigDestinationID],
	[t2].[OutfeedTransportOrderID],
	[source].[Id] as [Id_1],
	[sourceShelf].[Id] as [Id_2],
	[dest].[Id] as [Id_3],
	[destShelf].[Id] as [Id_4],
	[origdest].[Id] as [Id_5]
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

