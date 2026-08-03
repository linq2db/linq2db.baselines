-- SQLite.Classic SQLite
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
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
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
	([x].[Status] <> 'New' OR [x].[Status] IS NULL) AND
	([x].[Status] <> 'Completed' OR [x].[Status] IS NULL) AND
	strftime('%Y-%m-%d %H:%M:%f', [x].[NotificationDateTime]) < strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP) AND
	strftime('%Y-%m-%d %H:%M:%f', Date([x].[StartDateTime])) < strftime('%Y-%m-%d %H:%M:%f', Date(CURRENT_TIMESTAMP))

