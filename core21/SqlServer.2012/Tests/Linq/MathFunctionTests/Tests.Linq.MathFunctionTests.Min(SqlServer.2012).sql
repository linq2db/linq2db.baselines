BeforeExecute
-- SqlServer.2012

SELECT
	IIF([p].[MoneyValue] < 5, [p].[MoneyValue], 5)
FROM
	[LinqDataTypes] [p]
WHERE
	(IIF([p].[MoneyValue] < 5, [p].[MoneyValue], 5) <> 0 OR IIF([p].[MoneyValue] < 5, [p].[MoneyValue], 5) IS NULL)

