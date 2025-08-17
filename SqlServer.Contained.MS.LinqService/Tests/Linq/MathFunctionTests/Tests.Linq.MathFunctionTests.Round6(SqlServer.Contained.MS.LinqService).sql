BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND(CAST([t].[MoneyValue] AS Float), 0) <> 0

