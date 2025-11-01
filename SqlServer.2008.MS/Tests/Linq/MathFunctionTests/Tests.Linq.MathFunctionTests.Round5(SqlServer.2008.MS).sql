-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 0) <> 0

