BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NOT NULL)
	DROP TABLE [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

INSERT INTO [Common_Topology_Locations]
(
	[StartDateTime],
	[PreNotification],
	[PreNotification2],
	[PreNotification3],
	[StrField]
)
VALUES
(CAST('2020-02-29T17:54:55.1231234' AS DATETIME2),CAST(20000000000 AS BIGINT),CAST('00:33:20.0000000' AS TIME),CAST('00:33:20.0000000' AS TIME),CAST('2020-02-29T00:00:00.0000000' AS DATETIME2))

BeforeExecute
-- SqlServer.2008

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	CASE
		WHEN [t].[PreNotification] <> CAST(0 AS BIGINT) OR [t].[PreNotification] IS NULL
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t].[PreNotification2] <> CAST('00:00:00.0000000' AS TIME) OR [t].[PreNotification2] IS NULL
			THEN 1
		ELSE 0
	END,
	[t].[PreNotification2],
	CASE
		WHEN [t].[PreNotification3] <> CAST('00:00:00.0000000' AS TIME)
			THEN 1
		ELSE 0
	END,
	[t].[PreNotification3],
	DatePart(day, [t].[StrField])
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NOT NULL)
	DROP TABLE [Common_Topology_Locations]

