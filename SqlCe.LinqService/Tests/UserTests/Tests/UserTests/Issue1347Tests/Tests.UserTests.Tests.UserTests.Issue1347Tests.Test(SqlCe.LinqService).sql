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

DROP TABLE [WMS_ResourceA]

BeforeExecute
-- SqlCe

CREATE TABLE [WMS_ResourceA]
(
	[Id] UNIQUEIDENTIFIER NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	[tp12].[Id],
	[tp12].[ResourceID],
	[tp12].[StorageShelfSourceID],
	[tp12].[RPSourceID],
	[tp12].[StorageShelfDestinationID],
	[tp12].[RPDestinationID],
	[tp12].[RPOrigDestinationID],
	[tp12].[OutfeedTransportOrderID],
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
-- SqlCe

DROP TABLE [WMS_ResourceA]

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

