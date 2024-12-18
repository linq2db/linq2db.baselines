BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [GlobalTaskDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [WmsResourcePointDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [StorageShelfDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [StorageShelfDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [OutfeedTransportOrderDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [WMS_OutfeedTransportOrderA]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [WmsLoadCarrierDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WMS_ResourceA]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [WMS_ResourceA]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
	(((((((
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
		LEFT JOIN [WmsResourcePointDTO] [source] ON ([tp12].[RPSourceID] = [source].[Id] AND [tp12].[RPSourceID] IS NOT NULL))
		LEFT JOIN [StorageShelfDTO] [sourceShelf] ON ([tp12].[StorageShelfSourceID] = [sourceShelf].[Id] AND [tp12].[StorageShelfSourceID] IS NOT NULL))
		LEFT JOIN [WmsResourcePointDTO] [dest] ON ([tp12].[RPDestinationID] = [dest].[Id] AND [tp12].[RPDestinationID] IS NOT NULL))
		LEFT JOIN [StorageShelfDTO] [destShelf] ON ([tp12].[StorageShelfDestinationID] = [destShelf].[Id] AND [tp12].[StorageShelfDestinationID] IS NOT NULL))
		LEFT JOIN [WmsResourcePointDTO] [origdest] ON ([tp12].[RPOrigDestinationID] = [origdest].[Id] AND [tp12].[RPOrigDestinationID] IS NOT NULL))
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
		) [res_1] ON ([tp12].[ResourceID] = [res_1].[Id]))
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
		) [outfeed] ON ([tp12].[OutfeedTransportOrderID] = [outfeed].[Id] AND [tp12].[OutfeedTransportOrderID] IS NOT NULL)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WMS_ResourceA]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WMS_OutfeedTransportOrderA]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [OutfeedTransportOrderDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [StorageShelfDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [GlobalTaskDTO]

