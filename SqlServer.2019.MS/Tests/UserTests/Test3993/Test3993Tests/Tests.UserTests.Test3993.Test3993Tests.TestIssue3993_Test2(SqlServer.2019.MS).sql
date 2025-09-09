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
	[x].[Status],
	[x].[NotificationDateTime]
FROM
	(
		SELECT
			[t].[Status],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime],
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
	[x].[NotificationDateTime] < DATETIME2FROMPARTS(2025, 8, 31, 17, 35, 3, 6454516, 7) AND
	CAST([x].[StartDateTime] AS Date) < CAST(DATETIME2FROMPARTS(2025, 8, 31, 17, 35, 3, 6456426, 7) AS Date)

