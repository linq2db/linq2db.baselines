-- SQLite.Classic SQLite
SELECT
	LEAD([p].[ProcessName], 1, 'None') OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SQLite.Classic SQLite
SELECT
	LAG([p].[ProcessName], 1, 'None') OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

