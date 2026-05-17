-- SqlServer.2012.MS SqlServer.2012

SELECT
	LEAD([p].[ProcessName], 1, N'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	LAG([p].[ProcessName], 1, N'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

