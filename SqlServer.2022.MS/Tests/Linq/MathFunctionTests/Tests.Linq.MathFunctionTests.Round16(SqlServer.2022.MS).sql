-- SqlServer.2022.MS SqlServer.2022
SELECT
	IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, [p].[ID] % 2 + 2) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], [p].[ID] % 2 + 2), ROUND([p].[MoneyValue] / 2, [p].[ID] % 2 + 2) * 2, ROUND([p].[MoneyValue], [p].[ID] % 2 + 2))
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

-- SqlServer.2022.MS SqlServer.2022
SELECT
	IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, [p].[ID] % 2 + 1) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], [p].[ID] % 2 + 1), ROUND([p].[MoneyValue] / 2, [p].[ID] % 2 + 1) * 2, ROUND([p].[MoneyValue], [p].[ID] % 2 + 1))
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

