-- SQLite.Classic SQLite
SELECT
	CAST((CAST([row_1].[PreNotification3] AS INTEGER) - (CAST([row_1].[PreNotification3] AS INTEGER) % 864000000000)) / 864000000000 AS INTEGER),
	CAST((CAST([row_1].[PreNotification3] AS INTEGER) - (CAST([row_1].[PreNotification3] AS INTEGER) % 36000000000)) / 36000000000 % 24 AS INTEGER),
	CAST((CAST([row_1].[PreNotification3] AS INTEGER) - (CAST([row_1].[PreNotification3] AS INTEGER) % 600000000)) / 600000000 % 60 AS INTEGER),
	CAST((CAST([row_1].[PreNotification3] AS INTEGER) - (CAST([row_1].[PreNotification3] AS INTEGER) % 10000000)) / 10000000 % 60 AS INTEGER),
	CAST((CAST([row_1].[PreNotification3] AS INTEGER) - (CAST([row_1].[PreNotification3] AS INTEGER) % 10000)) / 10000 % 1000 AS INTEGER),
	CAST((CAST([row_1].[PreNotification3] AS INTEGER) - (CAST([row_1].[PreNotification3] AS INTEGER) % 10)) / 10 % 1000 AS INTEGER),
	CAST(CAST([row_1].[PreNotification3] AS INTEGER) * 100 % 1000 AS INTEGER)
FROM
	[Test] [row_1]
LIMIT 2

