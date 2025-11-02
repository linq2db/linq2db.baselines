-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 1) <> 0

