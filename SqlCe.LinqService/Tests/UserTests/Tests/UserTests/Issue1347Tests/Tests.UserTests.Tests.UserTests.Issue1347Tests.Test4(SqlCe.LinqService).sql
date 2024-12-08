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
-- SqlCe

DROP TABLE [WMS_GlobalTaskA]

BeforeExecute
-- SqlCe

DROP TABLE [GlobalTaskDTO]

