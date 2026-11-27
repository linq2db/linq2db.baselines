-- SqlServer.2012
SELECT
	LEAD([p].[ProcessName], 1, N'None') OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SqlServer.2012
SELECT
	LAG([p].[ProcessName], 1, N'None') OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

