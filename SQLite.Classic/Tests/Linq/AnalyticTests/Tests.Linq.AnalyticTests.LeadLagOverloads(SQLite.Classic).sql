-- SQLite.Classic SQLite
SELECT
	LEAD([p].[ProcessName], 2) OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SQLite.Classic SQLite
SELECT
	LEAD([p].[ProcessName]) OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SQLite.Classic SQLite
SELECT
	LAG([p].[ProcessName], 2) OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SQLite.Classic SQLite
SELECT
	LAG([p].[ProcessName]) OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

