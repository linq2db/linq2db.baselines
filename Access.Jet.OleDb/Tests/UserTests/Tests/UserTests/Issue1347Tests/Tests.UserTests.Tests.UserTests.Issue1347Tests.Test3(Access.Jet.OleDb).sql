BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [GlobalTaskDTO]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [GlobalTaskDTO]
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [WMS_GlobalTaskA]
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [WmsResourcePointDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [StorageShelfDTO]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [StorageShelfDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
	(((((
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
		LEFT JOIN [WmsResourcePointDTO] [source] ON ([t2].[RPSourceID] = [source].[Id] AND [t2].[RPSourceID] IS NOT NULL))
		LEFT JOIN [StorageShelfDTO] [sourceShelf] ON ([t2].[StorageShelfSourceID] = [sourceShelf].[Id] AND [t2].[StorageShelfSourceID] IS NOT NULL))
		LEFT JOIN [WmsResourcePointDTO] [dest] ON ([t2].[RPDestinationID] = [dest].[Id] AND [t2].[RPDestinationID] IS NOT NULL))
		LEFT JOIN [StorageShelfDTO] [destShelf] ON ([t2].[StorageShelfDestinationID] = [destShelf].[Id] AND [t2].[StorageShelfDestinationID] IS NOT NULL))
		LEFT JOIN [WmsResourcePointDTO] [origdest] ON ([t2].[RPOrigDestinationID] = [origdest].[Id] AND [t2].[RPOrigDestinationID] IS NOT NULL)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [StorageShelfDTO]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [GlobalTaskDTO]

