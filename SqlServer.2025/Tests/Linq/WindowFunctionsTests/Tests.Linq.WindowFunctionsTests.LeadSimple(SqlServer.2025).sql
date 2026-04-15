-- SqlServer.2025

SELECT
	[t].[Id],
	LEAD([t].[IntValue]) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

