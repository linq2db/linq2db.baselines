BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019

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
(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7),DATETIME2FROMPARTS(2020, 2, 29, 21, 54, 55, 1231000, 7),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7),NULL)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[StartDateTime],
	[t1].[StartDateTime2],
	[t1].[EndDateTime],
	[t1].[PreNotification],
	[t1].[PreNotification2],
	[t1].[PreNotification3],
	[t1].[StrField],
	[t1].[Status]
FROM
	[Common_Topology_Locations] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x].[StartDateTime],
	[x].[StartDateTime2],
	[x].[EndDateTime],
	[x].[PreNotification],
	[x].[PreNotification2],
	[x].[PreNotification3],
	[x].[StrField],
	[x].[Status]
FROM
	[Common_Topology_Locations] [x]
WHERE
	DatePart(year, [x].[StartDateTime2]) = 2023

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 300000
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 0
DECLARE @UtcNow DateTime2
SET     @UtcNow = DATETIME2FROMPARTS(2024, 6, 15, 7, 29, 43, 5556678, 7)

SELECT
	[x].[StartDateTime],
	[x].[StartDateTime2],
	[x].[EndDateTime],
	[x].[PreNotification],
	[x].[PreNotification2],
	[x].[PreNotification3],
	[x].[StrField],
	[x].[Status]
FROM
	[Common_Topology_Locations] [x]
WHERE
	DateAdd(millisecond, @p, DateAdd(hour, @p_1, [x].[StartDateTime2])) > @UtcNow

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 0
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 876000
DECLARE @UtcNow DateTime2
SET     @UtcNow = DATETIME2FROMPARTS(2024, 6, 15, 7, 29, 43, 5690023, 7)

SELECT
	[x].[StartDateTime],
	[x].[StartDateTime2],
	[x].[EndDateTime],
	[x].[PreNotification],
	[x].[PreNotification2],
	[x].[PreNotification3],
	[x].[StrField],
	[x].[Status]
FROM
	[Common_Topology_Locations] [x]
WHERE
	DateAdd(millisecond, @p, DateAdd(hour, @p_1, [x].[StartDateTime2])) > @UtcNow

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x_1].[t1],
	[x_1].[t2]
FROM
	(
		SELECT
			CAST([x].[PreNotification] / 10000000 AS Float) as [t2],
			CAST([x].[PreNotification] / 10000 AS Float) as [t1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[t2] < [x_1].[t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @DateTime4Utc DateTime2
SET     @DateTime4Utc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	DateAdd(millisecond, -1 * ([x].[PreNotification] / 10000), [x].[StartDateTime]),
	DateAdd(millisecond, -1 * ([x].[PreNotification2] / 10000), [x].[StartDateTime]),
	DateAdd(millisecond, -1 * ([x].[PreNotification3] / 10000), [x].[StartDateTime]),
	DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime])),
	DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])),
	DateAdd(millisecond, ([x].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])),
	DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime2])),
	DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime2])),
	DatePart(day, [x].[StrField])
FROM
	[Common_Topology_Locations] [x]
WHERE
	DateAdd(millisecond, -1 * ([x].[PreNotification] / 10000), [x].[StartDateTime]) < @DateTime4Utc

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @DateTime4Utc DateTime2
SET     @DateTime4Utc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	DateAdd(millisecond, -1 * ([x].[PreNotification] / 10000), [x].[StartDateTime]),
	DateAdd(millisecond, -1 * ([x].[PreNotification2] / 10000), [x].[StartDateTime]),
	DateAdd(millisecond, -1 * ([x].[PreNotification3] / 10000), [x].[StartDateTime]),
	DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime])),
	DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])),
	DateAdd(millisecond, ([x].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])),
	DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime2])),
	DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime2])),
	DatePart(day, [x].[StrField])
FROM
	[Common_Topology_Locations] [x]
WHERE
	DateAdd(millisecond, -1 * ([x].[PreNotification2] / 10000), [x].[StartDateTime]) < @DateTime4Utc

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @DateTime4Utc DateTime2
SET     @DateTime4Utc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime4],
			[x].[StartDateTime],
			[x].[PreNotification],
			DateAdd(millisecond, -1 * ([x].[PreNotification] / 10000), [x].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([x].[PreNotification2] / 10000), [x].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([x].[PreNotification3] / 10000), [x].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, ([x].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime7],
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime8],
			DatePart(day, [x].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[NotificationDateTime4] < @DateTime4Utc

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @DateTime4Utc DateTime2
SET     @DateTime4Utc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime5],
			[x].[StartDateTime],
			[x].[PreNotification],
			DateAdd(millisecond, -1 * ([x].[PreNotification] / 10000), [x].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([x].[PreNotification2] / 10000), [x].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([x].[PreNotification3] / 10000), [x].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, ([x].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime7],
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime8],
			DatePart(day, [x].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[NotificationDateTime5] < @DateTime4Utc

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @DateTime4Utc DateTime2
SET     @DateTime4Utc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, ([x].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime6],
			[x].[StartDateTime],
			[x].[PreNotification],
			DateAdd(millisecond, -1 * ([x].[PreNotification] / 10000), [x].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([x].[PreNotification2] / 10000), [x].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([x].[PreNotification3] / 10000), [x].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime7],
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime8],
			DatePart(day, [x].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[NotificationDateTime6] < @DateTime4Utc

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @DateTime4Utc DateTime2
SET     @DateTime4Utc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime7],
			[x].[StartDateTime],
			[x].[PreNotification],
			DateAdd(millisecond, -1 * ([x].[PreNotification] / 10000), [x].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([x].[PreNotification2] / 10000), [x].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([x].[PreNotification3] / 10000), [x].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, ([x].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime8],
			DatePart(day, [x].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[NotificationDateTime7] < @DateTime4Utc

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @DateTime4Utc DateTime2
SET     @DateTime4Utc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime8],
			[x].[StartDateTime],
			[x].[PreNotification],
			DateAdd(millisecond, -1 * ([x].[PreNotification] / 10000), [x].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([x].[PreNotification2] / 10000), [x].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([x].[PreNotification3] / 10000), [x].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, ([x].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[x].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification] / 10000) / 3600000, [x].[StartDateTime2])) as [NotificationDateTime7],
			DatePart(day, [x].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[NotificationDateTime8] < @DateTime4Utc

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[x_1].[NotificationDateTime4]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[x].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[x].[PreNotification3] / 10000) / 3600000, [x].[StartDateTime])) as [NotificationDateTime4]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[NotificationDateTime4] < @DateTimeUtc

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [x]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 180000000000

SELECT
	[x_1].[diff]
FROM
	(
		SELECT
			DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100 as [diff]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[diff] < @p

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x_1].[Value_1]
FROM
	(
		SELECT
			DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100 as [Value_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	CAST([x_1].[Value_1] / 36000000000 AS Float) < 5

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 72000000000

SELECT
	[x_1].[diff]
FROM
	(
		SELECT
			DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100 as [diff]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[diff] < @p

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x_1].[Value_1]
FROM
	(
		SELECT
			DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100 as [Value_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	CAST([x_1].[Value_1] / 36000000000 AS Float) < 2

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

