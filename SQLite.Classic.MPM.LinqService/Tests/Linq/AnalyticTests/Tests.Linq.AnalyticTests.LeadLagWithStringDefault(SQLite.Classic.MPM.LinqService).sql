BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	LEAD([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	LAG([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

