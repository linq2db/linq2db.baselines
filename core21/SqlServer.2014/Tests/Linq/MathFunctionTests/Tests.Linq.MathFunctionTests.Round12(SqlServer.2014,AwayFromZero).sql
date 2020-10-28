BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Round([p].[MoneyValue], 1)
FROM
	[LinqDataTypes] [p]
WHERE
	Round([p].[MoneyValue], 1) <> 0 AND Round([p].[MoneyValue], 1) <> 7

