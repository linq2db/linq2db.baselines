-- SqlServer.2014.MS SqlServer.2014

SELECT
	LEAD([p].[ProcessName], 1, N'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	LAG([p].[ProcessName], 1, N'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

