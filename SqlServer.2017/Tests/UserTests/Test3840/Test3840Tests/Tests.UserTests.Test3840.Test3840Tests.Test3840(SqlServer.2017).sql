BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

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
-- SqlServer.2017

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	DatePart(day, [t].[StrField])
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Common_Topology_Locations]

