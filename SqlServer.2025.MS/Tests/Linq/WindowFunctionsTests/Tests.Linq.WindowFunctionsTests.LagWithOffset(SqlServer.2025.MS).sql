-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t].[Id],
	LAG([t].[IntValue], 2) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

