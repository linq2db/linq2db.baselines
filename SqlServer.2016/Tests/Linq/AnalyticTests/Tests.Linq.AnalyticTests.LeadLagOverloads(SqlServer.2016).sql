-- SqlServer.2016
SELECT
	LEAD([p].[ProcessName], 2) OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SqlServer.2016
SELECT
	LEAD([p].[ProcessName]) OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SqlServer.2016
SELECT
	LAG([p].[ProcessName], 2) OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SqlServer.2016
SELECT
	LAG([p].[ProcessName]) OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

