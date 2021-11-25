BeforeExecute
-- SqlServer.2012

SELECT
	Round([p].[MoneyValue], 0)
FROM
	[LinqDataTypes] [p]
WHERE
	Round([p].[MoneyValue], 0) <> 0

