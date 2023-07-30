BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Round([p].[MoneyValue], 0, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	Round([p].[MoneyValue], 0, 1) <> 0.1

