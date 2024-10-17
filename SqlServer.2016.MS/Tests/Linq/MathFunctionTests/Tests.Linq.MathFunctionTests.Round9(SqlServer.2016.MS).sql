BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	ROUND([t].[MoneyValue], 1) <> 0

