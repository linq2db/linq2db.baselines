BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	LEAD([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	LAG([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

