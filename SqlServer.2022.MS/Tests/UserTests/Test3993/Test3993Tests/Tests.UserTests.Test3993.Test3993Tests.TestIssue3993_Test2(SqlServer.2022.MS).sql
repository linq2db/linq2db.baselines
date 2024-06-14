BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NULL)
	CREATE TABLE [Common_Topology_Locations]
	(
		[StartDateTime]    DateTime2          NULL,
		[StartDateTime2]   DateTime2      NOT NULL,
		[EndDateTime]      DateTime2          NULL,
		[PreNotification]  BigInt             NULL,
		[PreNotification2] BigInt             NULL,
		[PreNotification3] BigInt         NOT NULL,
		[StrField]         DateTime2          NULL,
		[Status]           NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [Common_Topology_Locations]
(
	[StartDateTime],
	[StartDateTime2],
	[EndDateTime],
	[PreNotification],
	[PreNotification2],
	[PreNotification3],
	[StrField],
	[Status]
)
VALUES
(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7),DATETIME2FROMPARTS(2020, 2, 29, 21, 54, 55, 1231000, 7),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7),NULL),
(DATETIME2FROMPARTS(2023, 10, 17, 9, 40, 23, 0, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7),DATETIME2FROMPARTS(2020, 2, 29, 21, 54, 55, 1231000, 7),CAST(6048000000000 AS BIGINT),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7),NULL)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @UtcNow DateTime2
SET     @UtcNow = DATETIME2FROMPARTS(2024, 6, 14, 10, 2, 19, 6546287, 7)
DECLARE @Date DateTime2
SET     @Date = DATETIME2FROMPARTS(2024, 6, 14, 0, 0, 0, 0, 7)

SELECT
	[x_1].[StartDateTime],
	[x_1].[StartDateTime2],
	[x_1].[EndDateTime],
	[x_1].[PreNotification],
	[x_1].[PreNotification2],
	[x_1].[PreNotification3],
	[x_1].[StrField],
	[x_1].[Status],
	[x_1].[NotificationDateTime]
FROM
	(
		SELECT
			[x].[Status],
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime],
			CAST([x].[StartDateTime] AS Date) as [Date_1],
			[x].[StartDateTime],
			[x].[StartDateTime2],
			[x].[EndDateTime],
			[x].[PreNotification],
			[x].[PreNotification2],
			[x].[PreNotification3],
			[x].[StrField]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	([x_1].[Status] <> N'New' OR [x_1].[Status] IS NULL) AND
	([x_1].[Status] <> N'Completed' OR [x_1].[Status] IS NULL) AND
	[x_1].[NotificationDateTime] < @UtcNow AND
	[x_1].[Date_1] < @Date

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Common_Topology_Locations]

