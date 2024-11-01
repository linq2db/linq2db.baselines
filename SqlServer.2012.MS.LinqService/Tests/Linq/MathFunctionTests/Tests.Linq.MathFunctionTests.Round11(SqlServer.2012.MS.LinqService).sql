BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	IIF(CAST([t].[MoneyValue] AS Float) * 2 = ROUND(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> ROUND(CAST([t].[MoneyValue] AS Float), 1), ROUND(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2, ROUND(CAST([t].[MoneyValue] AS Float), 1)) <> 0

