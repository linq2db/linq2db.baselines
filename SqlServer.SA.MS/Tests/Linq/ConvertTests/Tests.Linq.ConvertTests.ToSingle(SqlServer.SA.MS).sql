-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST([p].[MoneyValue] AS Real) > 0

