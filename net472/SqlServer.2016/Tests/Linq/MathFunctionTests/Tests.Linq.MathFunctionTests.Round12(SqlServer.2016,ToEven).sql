BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1), Round([p].[MoneyValue] / 2, 1) * 2, Round([p].[MoneyValue], 1))
FROM
	[LinqDataTypes] [p]
WHERE
	(IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1), Round([p].[MoneyValue] / 2, 1) * 2, Round([p].[MoneyValue], 1)) <> 0 OR IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1), Round([p].[MoneyValue] / 2, 1) * 2, Round([p].[MoneyValue], 1)) IS NULL) AND
	(IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1), Round([p].[MoneyValue] / 2, 1) * 2, Round([p].[MoneyValue], 1)) <> 7 OR IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1), Round([p].[MoneyValue] / 2, 1) * 2, Round([p].[MoneyValue], 1)) IS NULL)

