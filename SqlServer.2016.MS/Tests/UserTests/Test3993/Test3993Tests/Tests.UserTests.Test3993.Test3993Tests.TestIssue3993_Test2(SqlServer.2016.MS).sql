-- SqlServer.2016.MS SqlServer.2016
SELECT
	[x].[StartDateTime],
	[x].[StartDateTime2],
	[x].[EndDateTime],
	[x].[PreNotification],
	[x].[PreNotification2],
	[x].[PreNotification3],
	[x].[StrField],
	[x].[Status],
	[x].[NotificationDateTime]
FROM
	(
		SELECT
			[t].[Status],
			DateAdd(nanosecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000) * 100, DateAdd(millisecond, (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) - (((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000) % 10000)) / 10000, DateAdd(hour, ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) - ((-CAST([t].[PreNotification] AS BigInt) % 864000000000) % 36000000000)) / 36000000000, DateAdd(day, (-CAST([t].[PreNotification] AS BigInt) - (-CAST([t].[PreNotification] AS BigInt) % 864000000000)) / 864000000000, [t].[StartDateTime])))) as [NotificationDateTime],
			[t].[StartDateTime],
			[t].[StartDateTime2],
			[t].[EndDateTime],
			[t].[PreNotification],
			[t].[PreNotification2],
			[t].[PreNotification3],
			[t].[StrField]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	([x].[Status] <> N'New' OR [x].[Status] IS NULL) AND
	([x].[Status] <> N'Completed' OR [x].[Status] IS NULL) AND
	[x].[NotificationDateTime] < SYSUTCDATETIME() AND
	CAST([x].[StartDateTime] AS Date) < CAST(SYSUTCDATETIME() AS Date)

