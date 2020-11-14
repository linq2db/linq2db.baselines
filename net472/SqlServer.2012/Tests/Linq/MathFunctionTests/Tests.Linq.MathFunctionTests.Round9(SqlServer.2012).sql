BeforeExecute
-- SqlServer.2012

SELECT
	Round([t].[MoneyValue], 1)
FROM
	[LinqDataTypes] [t]
WHERE
	Round([t].[MoneyValue], 1) <> 0

