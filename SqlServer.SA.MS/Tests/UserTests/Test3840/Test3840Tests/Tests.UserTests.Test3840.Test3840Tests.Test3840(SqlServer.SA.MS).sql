BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NULL)
	CREATE TABLE [Common_Topology_Locations]
	(
		[StartDateTime]    DateTime2     NULL,
		[PreNotification]  BigInt        NULL,
		[PreNotification2] Time          NULL,
		[PreNotification3] Time      NOT NULL,
		[StrField]         DateTime2     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Common_Topology_Locations]
(
	[StartDateTime],
	[PreNotification],
	[PreNotification2],
	[PreNotification3],
	[StrField]
)
VALUES
(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),CAST(20000000000 AS BIGINT),TIMEFROMPARTS(0, 33, 20, 0, 7),TIMEFROMPARTS(0, 33, 20, 0, 7),DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7))

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	IIF([t].[PreNotification] <> CAST(0 AS BIGINT) OR [t].[PreNotification] IS NULL, 1, 0),
	IIF([t].[PreNotification2] <> TIMEFROMPARTS(0, 0, 0, 0, 7) OR [t].[PreNotification2] IS NULL, 1, 0),
	[t].[PreNotification2],
	IIF([t].[PreNotification3] <> TIMEFROMPARTS(0, 0, 0, 0, 7), 1, 0),
	[t].[PreNotification3],
	DatePart(day, [t].[StrField])
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

