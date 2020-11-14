BeforeExecute
-- SqlServer.2012

SELECT
	Round([t].[MoneyValue], 0)
FROM
	[LinqDataTypes] [t]
WHERE
	Round([t].[MoneyValue], 0) <> 0

