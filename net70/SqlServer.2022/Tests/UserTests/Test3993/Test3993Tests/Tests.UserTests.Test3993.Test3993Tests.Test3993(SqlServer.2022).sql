BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NULL)
	CREATE TABLE [Common_Topology_Locations]
	(
		[StartDateTime]    DateTime2     NULL,
		[StartDateTime2]   DateTime2 NOT NULL,
		[EndDateTime]      DateTime2     NULL,
		[PreNotification]  BigInt        NULL,
		[PreNotification2] BigInt        NULL,
		[PreNotification3] BigInt    NOT NULL,
		[StrField]         DateTime2     NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [Common_Topology_Locations]
(
	[StartDateTime],
	[StartDateTime2],
	[EndDateTime],
	[PreNotification],
	[PreNotification2],
	[PreNotification3],
	[StrField]
)
VALUES
(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7),DATETIME2FROMPARTS(2020, 2, 29, 21, 54, 55, 1231234, 7),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),CAST(200000000000 AS BIGINT),DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7))

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[StartDateTime],
	[t1].[StartDateTime2],
	[t1].[EndDateTime],
	[t1].[PreNotification],
	[t1].[PreNotification2],
	[t1].[PreNotification3],
	[t1].[StrField]
FROM
	[Common_Topology_Locations] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[x].[PreNotification]
FROM
	[Common_Topology_Locations] [x]
WHERE
	Convert(Float, [x].[PreNotification] / 10000000) < Convert(Float, [x].[PreNotification] / 10000)

BeforeExecute
-- SqlServer.2022
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
-- SqlServer.2022
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
-- SqlServer.2022
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
	DateAdd(millisecond, Convert(Float, [t].[PreNotification3] / 10000) * -1, [t].[StartDateTime]) < @DateTimeUtc

BeforeExecute
-- SqlServer.2022
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
	DateAdd(millisecond, Convert(Float, [t].[PreNotification] / 10000) * -1, [t].[StartDateTime]) < @DateTimeUtc

BeforeExecute
-- SqlServer.2022
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
	DateAdd(millisecond, [t].[PreNotification] / 10000, [t].[StartDateTime]) < @DateTimeUtc

BeforeExecute
-- SqlServer.2022
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
	DateAdd(millisecond, Convert(Float, [t].[PreNotification] / 10000) * -1, [t].[StartDateTime2]) < @DateTimeUtc

BeforeExecute
-- SqlServer.2022
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
	DateAdd(millisecond, Convert(Float, [t].[PreNotification3] / 10000) * -1, [t].[StartDateTime2]) < @DateTimeUtc

BeforeExecute
-- SqlServer.2022
DECLARE @DateTimeUtc DateTime2
SET     @DateTimeUtc = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[t].[StartDateTime],
	[t].[PreNotification3]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateAdd(millisecond, Convert(Float, [t].[PreNotification3] / 10000) * -1, [t].[StartDateTime]) < @DateTimeUtc

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2022
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
-- SqlServer.2022

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	Convert(Float, (DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100) / 36000000000) < 5

BeforeExecute
-- SqlServer.2022
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
-- SqlServer.2022

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	Convert(Float, (DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100) / 36000000000) < 2

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Common_Topology_Locations]

