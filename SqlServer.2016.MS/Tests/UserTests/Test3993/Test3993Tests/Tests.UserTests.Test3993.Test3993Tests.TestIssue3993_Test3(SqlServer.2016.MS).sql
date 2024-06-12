BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

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
(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7),NULL,CAST(145820000000 AS BIGINT),NULL,CAST(0 AS BIGINT),NULL,NULL)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[t].[StartDateTime],
	[t].[PreNotification],
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))
FROM
	[Common_Topology_Locations] [t]
WHERE
	DatePart(hour, DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))) = 13

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))
FROM
	[Common_Topology_Locations] [t]
WHERE
	DatePart(minute, DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))) = 51

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))
FROM
	[Common_Topology_Locations] [t]
WHERE
	DatePart(second, DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))) = 53

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Common_Topology_Locations]

