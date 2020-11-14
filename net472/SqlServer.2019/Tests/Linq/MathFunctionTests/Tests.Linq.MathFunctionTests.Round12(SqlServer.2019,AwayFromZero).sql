BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Round([t].[MoneyValue], 1)
FROM
	[LinqDataTypes] [t]
WHERE
	Round([t].[MoneyValue], 1) <> 0 AND Round([t].[MoneyValue], 1) <> 7

