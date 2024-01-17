BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Round([p].[MoneyValue], 0, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	Round([p].[MoneyValue], 0, 1) <> 0.1

