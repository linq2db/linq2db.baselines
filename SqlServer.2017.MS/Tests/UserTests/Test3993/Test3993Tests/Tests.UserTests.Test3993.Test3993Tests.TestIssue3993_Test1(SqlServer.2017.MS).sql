-- SqlServer.2017.MS SqlServer.2017
SELECT
	DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))
FROM
	[Common_Topology_Locations] [t]

-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 3000000000

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
	DateAdd(nanosecond, (((CAST(@p AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST(@p AS BigInt) % 864000000000) % 36000000000) - (((CAST(@p AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST(@p AS BigInt) % 864000000000) - ((CAST(@p AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST(@p AS BigInt) - (CAST(@p AS BigInt) % 864000000000)) / 864000000000, [x].[StartDateTime2])))) > SYSUTCDATETIME()

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 31536000000000000

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
	DateAdd(nanosecond, (((CAST(@p AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST(@p AS BigInt) % 864000000000) % 36000000000) - (((CAST(@p AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST(@p AS BigInt) % 864000000000) - ((CAST(@p AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST(@p AS BigInt) - (CAST(@p AS BigInt) % 864000000000)) / 864000000000, [x].[StartDateTime2])))) > SYSUTCDATETIME()

-- SqlServer.2017.MS SqlServer.2017
SELECT
	CAST(CAST([x].[PreNotification] AS BigInt) AS Float) / 10000,
	CAST(CAST([x].[PreNotification] AS BigInt) AS Float) / 10000000
FROM
	[Common_Topology_Locations] [x]
WHERE
	CAST(CAST([x].[PreNotification] AS BigInt) AS Float) / 10000000 < CAST(CAST([x].[PreNotification] AS BigInt) AS Float) / 10000

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[NotificationDateTime8],
	[x].[NotificationDateTime9],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification2] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification3] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime4],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime5],
			DateAdd(nanosecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST([t].[PreNotification] AS BigInt) - (CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime6],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime7],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime8],
			DateAdd(nanosecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) - ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST(-[t].[PreNotification3] AS BigInt) - (CAST(-[t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime9],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[NotificationDateTime8],
	[x].[NotificationDateTime9],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification2] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification3] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime4],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime5],
			DateAdd(nanosecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST([t].[PreNotification] AS BigInt) - (CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime6],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime7],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime8],
			DateAdd(nanosecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) - ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST(-[t].[PreNotification3] AS BigInt) - (CAST(-[t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime9],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime2] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[NotificationDateTime8],
	[x].[NotificationDateTime9],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime4],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification2] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification3] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime5],
			DateAdd(nanosecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST([t].[PreNotification] AS BigInt) - (CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime6],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime7],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime8],
			DateAdd(nanosecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) - ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST(-[t].[PreNotification3] AS BigInt) - (CAST(-[t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime9],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime4] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[NotificationDateTime8],
	[x].[NotificationDateTime9],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime5],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification2] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification3] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime4],
			DateAdd(nanosecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST([t].[PreNotification] AS BigInt) - (CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime6],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime7],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime8],
			DateAdd(nanosecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) - ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST(-[t].[PreNotification3] AS BigInt) - (CAST(-[t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime9],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime5] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[NotificationDateTime8],
	[x].[NotificationDateTime9],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(nanosecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST([t].[PreNotification] AS BigInt) - (CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime6],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification2] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification3] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime4],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime5],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime7],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime8],
			DateAdd(nanosecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) - ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST(-[t].[PreNotification3] AS BigInt) - (CAST(-[t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime9],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime6] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[NotificationDateTime8],
	[x].[NotificationDateTime9],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime7],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification2] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification3] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime4],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime5],
			DateAdd(nanosecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST([t].[PreNotification] AS BigInt) - (CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime6],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime8],
			DateAdd(nanosecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) - ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST(-[t].[PreNotification3] AS BigInt) - (CAST(-[t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime9],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime7] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[NotificationDateTime8],
	[x].[NotificationDateTime9],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime8],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification2] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * (CAST(CAST([t].[PreNotification3] AS BigInt) AS Float) / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime4],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime5],
			DateAdd(nanosecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST([t].[PreNotification] AS BigInt) - (CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime6],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime7],
			DateAdd(nanosecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) - ((CAST(-[t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (CAST(-[t].[PreNotification3] AS BigInt) - (CAST(-[t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime2])))) as [NotificationDateTime9],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime8] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x].[NotificationDateTime4]
FROM
	(
		SELECT
			DateAdd(nanosecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification3] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification3] AS BigInt) - (-CAST([t].[PreNotification3] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime4]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime4] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	DATEDIFF_BIG(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [t]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	DATEDIFF_BIG(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [x]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 180000000000

SELECT
	[x].[diff]
FROM
	(
		SELECT
			DATEDIFF_BIG(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100 as [diff]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[diff] < @p

-- SqlServer.2017.MS SqlServer.2017
SELECT
	DATEDIFF_BIG(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [x]
WHERE
	CAST(CAST(DATEDIFF_BIG(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100 AS BigInt) AS Float) / 36000000000 < 5

-- SqlServer.2017.MS SqlServer.2017
DECLARE @p BigInt -- Int64
SET     @p = 72000000000

SELECT
	[x].[diff]
FROM
	(
		SELECT
			DATEDIFF_BIG(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100 as [diff]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[diff] < @p

-- SqlServer.2017.MS SqlServer.2017
SELECT
	DATEDIFF_BIG(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [x]
WHERE
	CAST(CAST(DATEDIFF_BIG(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100 AS BigInt) AS Float) / 36000000000 < 2

