BeforeExecute
-- SqlServer.2017

SELECT
	IIF([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1)
FROM
	[LinqDataTypes] [p]
WHERE
	(IIF([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1) <> 0 OR IIF([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1) IS NULL)

