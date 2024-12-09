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
	[t3].[Id],
	[t3].[ResourceID],
	[t3].[StorageShelfSourceID],
	[t3].[RPSourceID],
	[t3].[StorageShelfDestinationID],
	[t3].[RPDestinationID],
	[t3].[RPOrigDestinationID],
	[t3].[OutfeedTransportOrderID],
	[res_1].[Id] as [Id_1]
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
-- SqlCe

DROP TABLE [WMS_LoadCarrierA]

BeforeExecute
-- SqlCe

DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SqlCe

DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- SqlCe

DROP TABLE [GlobalTaskDTO]

