BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NULL)
	CREATE TABLE [Common_Topology_Locations]
	(
		[StartDateTime]   DateTime2     NULL,
		[PreNotification] Time          NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[StartDateTime],
	[t].[PreNotification]
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Common_Topology_Locations]

