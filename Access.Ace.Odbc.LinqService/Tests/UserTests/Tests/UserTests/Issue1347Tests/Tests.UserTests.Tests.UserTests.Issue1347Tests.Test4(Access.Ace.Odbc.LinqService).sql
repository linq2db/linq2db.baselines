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
	[GlobalTaskDTO] [t1]
UNION
SELECT
	[t2].[Id],
	[t2].[ResourceID],
	[t2].[StorageShelfSourceID],
	[t2].[RPSourceID],
	[t2].[StorageShelfDestinationID],
	[t2].[RPDestinationID],
	[t2].[RPOrigDestinationID],
	[t2].[OutfeedTransportOrderID]
FROM
	[WMS_GlobalTaskA] [t2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [GlobalTaskDTO]

