-- SQLite.MS SQLite
SELECT
	LEAD([p].[ProcessName], 1, 'None') OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SQLite.MS SQLite
SELECT
	LAG([p].[ProcessName], 1, 'None') OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

