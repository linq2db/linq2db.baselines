BeforeExecute
-- SqlServer.2017

SELECT
	CAST([t].[MoneyValue] AS Float)
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND(CAST([t].[MoneyValue] AS Float), 0) <> 0

