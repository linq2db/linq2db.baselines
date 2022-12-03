BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NULL)
	CREATE TABLE [Common_Topology_Locations]
	(
		[StartDateTime]   DateTime2     NULL,
		[PreNotification] Time          NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[StartDateTime],
	[t].[PreNotification]
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

