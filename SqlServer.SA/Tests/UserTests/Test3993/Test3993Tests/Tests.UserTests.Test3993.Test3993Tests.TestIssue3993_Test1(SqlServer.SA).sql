BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

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
(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIME2FROMPARTS(2020, 2, 29, 21, 54, 55, 1231234, 7),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7),NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 300000
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 0
DECLARE @UtcNow DateTime2
SET     @UtcNow = DATETIME2FROMPARTS(2024, 4, 19, 21, 30, 50, 2204874, 7)

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
-- SqlServer.SA SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 0
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 876000
DECLARE @UtcNow DateTime2
SET     @UtcNow = DATETIME2FROMPARTS(2024, 4, 19, 21, 30, 50, 2273348, 7)

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
-- SqlServer.SA SqlServer.2019

SELECT
	[x].[PreNotification]
FROM
	[Common_Topology_Locations] [x]
WHERE
	Convert(Float, [x].[PreNotification] / 10000000) < Convert(Float, [x].[PreNotification] / 10000)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateAdd(millisecond, -1 * ([t].[PreNotification] / 10000), [t].[StartDateTime]) < @DateTimeUtc

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateAdd(millisecond, -1 * ([t].[PreNotification2] / 10000), [t].[StartDateTime]) < @DateTimeUtc

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) < @DateTimeUtc

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) < @DateTimeUtc

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateAdd(millisecond, ([t].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) < @DateTimeUtc

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime2])) < @DateTimeUtc

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime2])) < @DateTimeUtc

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification3]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) < @DateTimeUtc

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[x].[EndDateTime],
	[x].[StartDateTime]
FROM
	[Common_Topology_Locations] [x]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 180000000000

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	(DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100) < @p

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	Convert(Float, (DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100) / 36000000000) < 5

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 72000000000

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	(DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100) < @p

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	Convert(Float, (DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100) / 36000000000) < 2

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

