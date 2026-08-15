-- SqlServer.2008
SELECT
	[t].[Id],
	COUNT(CASE
		WHEN [t].[IntValue] = 20 THEN 1
		ELSE 0
	END) OVER (PARTITION BY [t].[CategoryId]),
	COUNT([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

