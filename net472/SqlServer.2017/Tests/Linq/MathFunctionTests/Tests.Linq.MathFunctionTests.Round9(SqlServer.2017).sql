BeforeExecute
-- SqlServer.2017

SELECT
	Round([p].[MoneyValue], 1)
FROM
	[LinqDataTypes] [p]
WHERE
	Round([p].[MoneyValue], 1) <> 0

