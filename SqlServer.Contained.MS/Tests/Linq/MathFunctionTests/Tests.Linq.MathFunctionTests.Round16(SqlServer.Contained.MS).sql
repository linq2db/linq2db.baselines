-- SqlServer.Contained.MS SqlServer.2019
SELECT
	IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, [p].[ID] % 2 + 2) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], [p].[ID] % 2 + 2), ROUND([p].[MoneyValue] / 2, [p].[ID] % 2 + 2) * 2, ROUND([p].[MoneyValue], [p].[ID] % 2 + 2))
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

