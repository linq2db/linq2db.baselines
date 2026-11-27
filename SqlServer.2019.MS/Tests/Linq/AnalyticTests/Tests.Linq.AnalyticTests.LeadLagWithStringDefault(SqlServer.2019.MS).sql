-- SqlServer.2019.MS SqlServer.2019
SELECT
	LEAD([p].[ProcessName], 1, N'None') OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	LAG([p].[ProcessName], 1, N'None') OVER (ORDER BY [p].[ProcessID])
FROM
	[ProcessNameRecord] [p]

