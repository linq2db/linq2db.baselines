BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	IIF([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1)
FROM
	[LinqDataTypes] [p]
WHERE
	IIF([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1) <> 0

