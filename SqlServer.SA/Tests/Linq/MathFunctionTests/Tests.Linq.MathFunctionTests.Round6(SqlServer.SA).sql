BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	CAST([t].[MoneyValue] AS Float)
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND(CAST([t].[MoneyValue] AS Float), 0) <> 0

