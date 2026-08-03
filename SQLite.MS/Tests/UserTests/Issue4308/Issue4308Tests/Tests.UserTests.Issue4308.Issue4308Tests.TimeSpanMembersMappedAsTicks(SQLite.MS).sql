-- SQLite.MS SQLite
SELECT
	[row_1].[Id],
	CAST((CAST([row_1].[PreNotification] AS INTEGER) - (CAST([row_1].[PreNotification] AS INTEGER) % 864000000000)) / 864000000000 AS INTEGER),
	CAST((CAST([row_1].[PreNotification] AS INTEGER) - (CAST([row_1].[PreNotification] AS INTEGER) % 36000000000)) / 36000000000 % 24 AS INTEGER),
	CAST((CAST([row_1].[PreNotification] AS INTEGER) - (CAST([row_1].[PreNotification] AS INTEGER) % 600000000)) / 600000000 % 60 AS INTEGER),
	CAST((CAST([row_1].[PreNotification] AS INTEGER) - (CAST([row_1].[PreNotification] AS INTEGER) % 10000000)) / 10000000 % 60 AS INTEGER),
	CAST((CAST([row_1].[PreNotification] AS INTEGER) - (CAST([row_1].[PreNotification] AS INTEGER) % 10000)) / 10000 % 1000 AS INTEGER),
	CAST([row_1].[PreNotification] AS INTEGER),
	CAST(CAST([row_1].[PreNotification] AS INTEGER) AS Float) / 864000000000,
	CAST(CAST([row_1].[PreNotification] AS INTEGER) AS Float) / 36000000000,
	CAST(CAST([row_1].[PreNotification] AS INTEGER) AS Float) / 600000000,
	CAST(CAST([row_1].[PreNotification] AS INTEGER) AS Float) / 10000000,
	CAST(CAST([row_1].[PreNotification] AS INTEGER) AS Float) / 10000,
	CAST((CAST([row_1].[PreNotification] AS INTEGER) - (CAST([row_1].[PreNotification] AS INTEGER) % 10)) / 10 % 1000 AS INTEGER),
	CAST(CAST([row_1].[PreNotification] AS INTEGER) * 100 % 1000 AS INTEGER),
	CAST(CAST([row_1].[PreNotification] AS INTEGER) AS Float) / 10,
	CAST(CAST([row_1].[PreNotification] AS INTEGER) AS Float) * 100
FROM
	[Common_Topology_Locations] [row_1]
ORDER BY
	[row_1].[Id]

