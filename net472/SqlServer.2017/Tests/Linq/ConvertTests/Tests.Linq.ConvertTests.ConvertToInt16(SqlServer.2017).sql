BeforeExecute
-- SqlServer.2017

SELECT
	Convert(SmallInt, IIF([t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0, Floor([t].[MoneyValue]), Round([t].[MoneyValue], 0)))
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(SmallInt, IIF([t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0, Floor([t].[MoneyValue]), Round([t].[MoneyValue], 0))) > 0

