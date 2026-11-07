-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF(CAST([p].[MoneyValue] AS Float) - FLOOR(CAST([p].[MoneyValue] AS Float)) = 0.5, ROUND(CAST([p].[MoneyValue] AS Float) * 0.5, 0) * 2, ROUND(CAST([p].[MoneyValue] AS Float), 0)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

