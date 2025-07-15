BeforeExecute
-- SQLite.MS SQLite

SELECT
	LEAD([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	LAG([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

