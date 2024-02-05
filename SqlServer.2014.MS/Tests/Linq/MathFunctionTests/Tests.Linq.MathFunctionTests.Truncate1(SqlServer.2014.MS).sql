BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Round([p].[MoneyValue], 0, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	Round([p].[MoneyValue], 0, 1) <> 0.1

