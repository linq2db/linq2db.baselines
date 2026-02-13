-- SqlServer.2022

SELECT
	CAST([p].[MoneyValue] AS Float)
FROM
	[LinqDataTypes] [p]
WHERE
	CAST([p].[MoneyValue] AS Float) > 0

