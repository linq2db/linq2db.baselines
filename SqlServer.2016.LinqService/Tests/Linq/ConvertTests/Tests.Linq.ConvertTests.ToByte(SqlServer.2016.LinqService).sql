BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor([p].[MoneyValue]) AS TinyInt) > 0

