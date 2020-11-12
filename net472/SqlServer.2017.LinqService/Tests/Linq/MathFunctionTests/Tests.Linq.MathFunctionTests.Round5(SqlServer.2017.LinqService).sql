BeforeExecute
-- SqlServer.2017

SELECT
	Round([t].[MoneyValue], 0)
FROM
	[LinqDataTypes] [t]
WHERE
	Round([t].[MoneyValue], 0) <> 0

