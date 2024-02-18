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
(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIME2FROMPARTS(2020, 2, 29, 21, 54, 55, 1231234, 7),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7),NULL),
(DATETIME2FROMPARTS(2023, 10, 17, 9, 40, 23, 0, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIME2FROMPARTS(2020, 2, 29, 21, 54, 55, 1231234, 7),CAST(6048000000000 AS BIGINT),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7),NULL)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @UtcNow DateTime2
SET     @UtcNow = DATETIME2FROMPARTS(2024, 2, 18, 20, 40, 16, 9280583, 7)
DECLARE @Date DateTime2
SET     @Date = DATETIME2FROMPARTS(2024, 2, 18, 0, 0, 0, 0, 7)

SELECT
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status]
FROM
	[Common_Topology_Locations] [t]
WHERE
	([t].[Status] <> N'New' OR [t].[Status] IS NULL) AND
	([t].[Status] <> N'Completed' OR [t].[Status] IS NULL) AND
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) < @UtcNow AND
	Convert(Date, [t].[StartDateTime]) < @Date

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Common_Topology_Locations]

