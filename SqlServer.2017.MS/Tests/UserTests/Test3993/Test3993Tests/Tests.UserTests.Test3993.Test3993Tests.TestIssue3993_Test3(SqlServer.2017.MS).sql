-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (1)
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))
FROM
	[Common_Topology_Locations] [t]

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (1)
	[t].[StartDateTime],
	[t].[PreNotification],
	DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))
FROM
	[Common_Topology_Locations] [t]

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (1)
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))
FROM
	[Common_Topology_Locations] [t]
WHERE
	DatePart(hour, DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))) = 13

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (1)
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))
FROM
	[Common_Topology_Locations] [t]
WHERE
	DatePart(minute, DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))) = 51

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (1)
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))
FROM
	[Common_Topology_Locations] [t]
WHERE
	DatePart(second, DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))) >= 52 AND
	DatePart(second, DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime]))))) <= 54

