-- SQLite.MS SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[Common_Topology_Locations] [t]

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
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
	CAST(strftime('%Y', [x].[StartDateTime2]) AS INTEGER) = 2023

-- SQLite.MS SQLite
DECLARE @p  -- Int64
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
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], CAST((CAST(@p AS INTEGER) - (CAST(@p AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST(@p AS INTEGER) % 864000000000) - ((CAST(@p AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')) > strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP)

-- SQLite.MS SQLite
DECLARE @p  -- Int64
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
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], CAST((CAST(@p AS INTEGER) - (CAST(@p AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST(@p AS INTEGER) % 864000000000) - ((CAST(@p AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')) > strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP)

-- SQLite.MS SQLite
SELECT
	CAST(CAST([x].[PreNotification] AS INTEGER) AS Float) / 10000,
	CAST(CAST([x].[PreNotification] AS INTEGER) AS Float) / 10000000
FROM
	[Common_Topology_Locations] [x]
WHERE
	CAST(CAST([x].[PreNotification] AS INTEGER) AS Float) / 10000000 < CAST(CAST([x].[PreNotification] AS INTEGER) AS Float) / 10000

-- SQLite.MS SQLite
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
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			[t].[StartDateTime],
			[t].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification2] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification3] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([t].[PreNotification] AS INTEGER) % 864000000000) - ((CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime7],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime8],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST((CAST(-[t].[PreNotification3] AS INTEGER) - (CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) - ((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime9],
			CAST(strftime('%d', [t].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x].[NotificationDateTime]) < strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')

-- SQLite.MS SQLite
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
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification2] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			[t].[StartDateTime],
			[t].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification3] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([t].[PreNotification] AS INTEGER) % 864000000000) - ((CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime7],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime8],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST((CAST(-[t].[PreNotification3] AS INTEGER) - (CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) - ((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime9],
			CAST(strftime('%d', [t].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x].[NotificationDateTime2]) < strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')

-- SQLite.MS SQLite
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
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime4],
			[t].[StartDateTime],
			[t].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification2] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification3] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([t].[PreNotification] AS INTEGER) % 864000000000) - ((CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime7],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime8],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST((CAST(-[t].[PreNotification3] AS INTEGER) - (CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) - ((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime9],
			CAST(strftime('%d', [t].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x].[NotificationDateTime4]) < strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')

-- SQLite.MS SQLite
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
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime5],
			[t].[StartDateTime],
			[t].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification2] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification3] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([t].[PreNotification] AS INTEGER) % 864000000000) - ((CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime7],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime8],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST((CAST(-[t].[PreNotification3] AS INTEGER) - (CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) - ((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime9],
			CAST(strftime('%d', [t].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x].[NotificationDateTime5]) < strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')

-- SQLite.MS SQLite
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
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([t].[PreNotification] AS INTEGER) % 864000000000) - ((CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime6],
			[t].[StartDateTime],
			[t].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification2] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification3] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime7],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime8],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST((CAST(-[t].[PreNotification3] AS INTEGER) - (CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) - ((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime9],
			CAST(strftime('%d', [t].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x].[NotificationDateTime6]) < strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')

-- SQLite.MS SQLite
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
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime7],
			[t].[StartDateTime],
			[t].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification2] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification3] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([t].[PreNotification] AS INTEGER) % 864000000000) - ((CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime8],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST((CAST(-[t].[PreNotification3] AS INTEGER) - (CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) - ((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime9],
			CAST(strftime('%d', [t].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x].[NotificationDateTime7]) < strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')

-- SQLite.MS SQLite
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
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime8],
			[t].[StartDateTime],
			[t].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification2] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((-1 * (CAST(CAST([t].[PreNotification3] AS INTEGER) AS Float) / 10000)) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([t].[PreNotification] AS INTEGER) % 864000000000) - ((CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime7],
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], CAST((CAST(-[t].[PreNotification3] AS INTEGER) - (CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) - ((CAST(-[t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime9],
			CAST(strftime('%d', [t].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x].[NotificationDateTime8]) < strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')

-- SQLite.MS SQLite
SELECT
	[x].[NotificationDateTime4]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification3] AS INTEGER) - (CAST([t].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification3] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime4]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x].[NotificationDateTime4]) < strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')

-- SQLite.MS SQLite
SELECT
	CAST(ROUND((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 86400000) AS INTEGER) * 10000
FROM
	[Common_Topology_Locations] [t]

-- SQLite.MS SQLite
SELECT
	CAST(ROUND((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 86400000) AS INTEGER) * 10000
FROM
	[Common_Topology_Locations] [x]

-- SQLite.MS SQLite
DECLARE @p  -- Int64
SET     @p = 180000000000

SELECT
	[x].[diff]
FROM
	(
		SELECT
			CAST(ROUND((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 86400000) AS INTEGER) * 10000 as [diff]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[diff] < @p

-- SQLite.MS SQLite
SELECT
	CAST(ROUND((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 86400000) AS INTEGER) * 10000
FROM
	[Common_Topology_Locations] [x]
WHERE
	CAST(CAST(CAST(ROUND((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 86400000) AS INTEGER) * 10000 AS INTEGER) AS Float) / 36000000000 < 5

-- SQLite.MS SQLite
DECLARE @p  -- Int64
SET     @p = 72000000000

SELECT
	[x].[diff]
FROM
	(
		SELECT
			CAST(ROUND((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 86400000) AS INTEGER) * 10000 as [diff]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[diff] < @p

-- SQLite.MS SQLite
SELECT
	CAST(ROUND((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 86400000) AS INTEGER) * 10000
FROM
	[Common_Topology_Locations] [x]
WHERE
	CAST(CAST(CAST(ROUND((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 86400000) AS INTEGER) * 10000 AS INTEGER) AS Float) / 36000000000 < 2

