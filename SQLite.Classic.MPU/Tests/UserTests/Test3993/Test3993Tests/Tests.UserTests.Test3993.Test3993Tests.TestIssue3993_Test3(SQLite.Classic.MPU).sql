-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[Common_Topology_Locations] [t]
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[Common_Topology_Locations] [t]
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[Common_Topology_Locations] [t]
WHERE
	CAST(strftime('%H', strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')) AS INTEGER) = 13
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[Common_Topology_Locations] [t]
WHERE
	CAST(strftime('%M', strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')) AS INTEGER) = 51
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[Common_Topology_Locations] [t]
WHERE
	CAST(strftime('%S', strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')) AS INTEGER) >= 52 AND
	CAST(strftime('%S', strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], CAST(-((CAST([t].[PreNotification] AS INTEGER) - (CAST([t].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([t].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')) AS INTEGER) <= 54
LIMIT 1

