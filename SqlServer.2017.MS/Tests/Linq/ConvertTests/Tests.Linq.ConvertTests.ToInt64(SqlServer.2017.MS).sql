-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor([p].[MoneyValue]) AS BigInt) > 0

