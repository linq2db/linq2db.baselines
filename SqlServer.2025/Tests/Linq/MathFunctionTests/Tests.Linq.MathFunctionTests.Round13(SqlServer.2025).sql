-- SqlServer.2025
SELECT
	IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, 5) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], 5), ROUND([p].[MoneyValue] / 2, 5) * 2, ROUND([p].[MoneyValue], 5))
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

