BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Common_Topology_Locations]
(
	[Id]       INTEGER       NOT NULL,
	[ClientId] Guid          NOT NULL,
	[Name]     NVarChar(255)     NULL,

	CONSTRAINT [PK_Common_Topology_Locations] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[ClientId],
	[t1].[Name]
FROM
	[Common_Topology_Locations] [t1]

