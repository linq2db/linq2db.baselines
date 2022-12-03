BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NOT NULL)
	DROP TABLE [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NULL)
	CREATE TABLE [Common_Topology_Locations]
	(
		[StartDateTime]   DateTime     NULL,
		[PreNotification] DateTime     NULL
	)

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[StartDateTime],
	[t].[PreNotification]
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NOT NULL)
	DROP TABLE [Common_Topology_Locations]

