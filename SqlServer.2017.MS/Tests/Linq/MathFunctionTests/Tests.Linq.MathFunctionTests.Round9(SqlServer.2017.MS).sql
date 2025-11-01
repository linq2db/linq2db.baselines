-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 1) <> 0

