-- SqlServer.SA.MS SqlServer.2019

SELECT
	LEAD([p].[ProcessName], 2) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	LEAD([p].[ProcessName]) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	LAG([p].[ProcessName], 2) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	LAG([p].[ProcessName]) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

