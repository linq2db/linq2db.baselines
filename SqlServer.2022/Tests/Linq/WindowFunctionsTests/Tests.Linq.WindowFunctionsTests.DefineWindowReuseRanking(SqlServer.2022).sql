-- SqlServer.2022

SELECT
	ROW_NUMBER() OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	RANK() OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	AVG([t].[DoubleValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MIN([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	COUNT(*) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	LEAD([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	LAG([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

