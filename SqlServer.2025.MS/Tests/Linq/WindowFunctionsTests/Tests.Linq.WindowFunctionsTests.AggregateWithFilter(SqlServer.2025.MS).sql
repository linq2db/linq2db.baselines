-- SqlServer.2025.MS SqlServer.2025

SELECT
	SUM(IIF([t].[CategoryId] = 1, [t].[IntValue], NULL)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	SUM(IIF([t].[IntValue] > 20, [t].[IntValue], NULL)) OVER (ORDER BY [t].[Id] ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	SUM(IIF([t].[IntValue] > 10, [t].[IntValue], NULL)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id] ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING),
	AVG(IIF([t].[DoubleValue] > 15, [t].[DoubleValue], NULL)) OVER (ORDER BY [t].[Id] RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	MIN(IIF([t].[IntValue] > 10, [t].[IntValue], NULL)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	MAX(IIF([t].[IntValue] < 80, [t].[IntValue], NULL)) OVER (ORDER BY [t].[Id] ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(IIF([t].[IntValue] > 20, 1, NULL)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

