-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[StartDateTime],
	[t1].[EndDateTime],
	[t1].[RequiredDateTime],
	[t1].[PreNotification],
	[t1].[RequiredInterval]
FROM
	[Common_Topology_Locations] [t1]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [row_1].[StartDateTime], CAST((CAST([row_1].[PreNotification] AS INTEGER) - (CAST([row_1].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([row_1].[PreNotification] AS INTEGER) % 864000000000) - ((CAST([row_1].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [row_1].[RequiredDateTime], CAST((CAST([row_1].[RequiredInterval] AS INTEGER) - (CAST([row_1].[RequiredInterval] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([row_1].[RequiredInterval] AS INTEGER) % 864000000000) - ((CAST([row_1].[RequiredInterval] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [row_1].[StartDateTime], CAST((CAST([row_1].[RequiredInterval] AS INTEGER) - (CAST([row_1].[RequiredInterval] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([row_1].[RequiredInterval] AS INTEGER) % 864000000000) - ((CAST([row_1].[RequiredInterval] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [row_1].[RequiredDateTime], CAST((CAST([row_1].[PreNotification] AS INTEGER) - (CAST([row_1].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS NVarChar(20)) || ' Day'), CAST(CAST(((CAST([row_1].[PreNotification] AS INTEGER) % 864000000000) - ((CAST([row_1].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [row_1].[StartDateTime], CAST(-((CAST([row_1].[PreNotification] AS INTEGER) - (CAST([row_1].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000) AS NVarChar(20)) || ' Day'), CAST(CAST((-(CAST([row_1].[PreNotification] AS INTEGER) % 864000000000) - (-(CAST([row_1].[PreNotification] AS INTEGER) % 864000000000) % 10000)) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	-[row_1].[PreNotification],
	CAST(ROUND((julianday([row_1].[EndDateTime]) - julianday([row_1].[StartDateTime])) * 86400000) AS INTEGER) * 10000,
	CAST(ROUND((julianday([row_1].[EndDateTime]) - julianday([row_1].[RequiredDateTime])) * 86400000) AS INTEGER) * 10000,
	CAST(ROUND((julianday([row_1].[RequiredDateTime]) - julianday([row_1].[StartDateTime])) * 86400000) AS INTEGER) * 10000
FROM
	[Common_Topology_Locations] [row_1]
LIMIT 2

