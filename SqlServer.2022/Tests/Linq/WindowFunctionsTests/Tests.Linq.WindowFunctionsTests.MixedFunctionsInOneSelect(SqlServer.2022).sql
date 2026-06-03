-- SqlServer.2022

SELECT
	ROW_NUMBER() OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	RANK() OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[IntValue]),
	DENSE_RANK() OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[IntValue]),
	SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id] ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	LEAD([t].[IntValue], 1, 0) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	LAG([t].[IntValue], 1, 0) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	FIRST_VALUE([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id] ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	LAST_VALUE([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id] ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM
	[WindowFunctionTestEntity] [t]

