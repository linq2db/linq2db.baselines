BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NULL)
	CREATE TABLE [Common_Topology_Locations]
	(
		[Id]       Int              NOT NULL,
		[ClientId] UniqueIdentifier NOT NULL,
		[Name]     NVarChar(4000)       NULL,

		CONSTRAINT [PK_Common_Topology_Locations] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[ClientId],
	[t1].[Name]
FROM
	[Common_Topology_Locations] [t1]

