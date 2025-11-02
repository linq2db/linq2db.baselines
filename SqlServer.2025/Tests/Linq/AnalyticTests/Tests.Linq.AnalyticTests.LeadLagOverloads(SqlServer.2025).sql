-- SqlServer.2025 SqlServer.2022

SELECT
	LEAD([p].[ProcessName], 2) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- SqlServer.2025 SqlServer.2022

SELECT
	LEAD([p].[ProcessName]) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- SqlServer.2025 SqlServer.2022

SELECT
	LAG([p].[ProcessName], 2) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- SqlServer.2025 SqlServer.2022

SELECT
	LAG([p].[ProcessName]) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

